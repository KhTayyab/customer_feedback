class Api::V1::CustomersController < ApplicationController

	skip_before_action :verify_authenticity_token

	def shop_list
		@shops = Shop.all.order('id DESC')
		render status:200, template: 'api/v1/customers/shop_list.json.jbuilder'
	end

	def generate_code
		time = Time.now
		
		customer_count = Customer.count
		if customer_count == 0
      customer_count = 1
    else
      customer_count = Customer.last.id + 1
    end
    form_number = "FormNo-#{time.to_date.year.to_s[2..4].to_i}-%.9d" % customer_count
    
    if params[:shop_name].present?
    	shop = Shop.find_by_shop_name(params[:shop_name])
    	if shop.nil?
    		customer_count = Customer.count
		    if customer_count == 0
		      customer_count = 1
		    else
		      customer_count = Customer.last.id + 1
		    end
		    store_number = "StoreNo-#{time.to_date.year.to_s[2..4].to_i}-%.9d" % customer_count
		  else
		  	store_number = shop.shop_number
    	end
    else	
    	customer_count = Customer.count
	    if customer_count == 0
	      customer_count = 1
	    else
	      customer_count = Customer.last.id + 1
	    end
	    store_number = "StoreNo-#{time.to_date.year.to_s[2..4].to_i}-%.9d" % customer_count
    end
	    
		render json:{:form_number => form_number, store_number: store_number}, status: 200
	end

	def save_customer_feedback
		@customer = Customer.new customer_care_params
		if not params[:hear_about_us].nil?
    	@customer.hear_about_us = params[:hear_about_us].map(&:to_s)
    else
    	@customer.hear_about_us = []
    end
    if not params[:date_of_birth].nil?
    	@customer.date_of_birth = Chronic.parse(params[:date_of_birth].delete(' '))
    else
    	@customer.date_of_birth = []
    end
    if @customer.save
			render json:{}, status: :created
		else
			render json: {errors: @customer.errors.full_messages}, status: :unprocessable_entity
		end
	end

	private

	def customer_care_params
		params.permit(:form_number, :store_number, :first_name, :last_name, :phone_number, :email, :gender, :rate_our_quality, :rate_our_design, :rate_our_variety, :rate_our_stitching, :rate_our_pricing, :rate_our_customer_care)
	end

end
