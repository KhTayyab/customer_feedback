class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
	create_table :customers do |t|
		t.string 		:form_number
		t.string 		:store_number
		t.string 		:first_name
		t.string 		:last_name
		t.string 		:phone_number
		t.string 		:email
		t.string 		:gender
		t.datetime 	:date_of_birth
		t.text			:hear_about_us
		t.string 		:rate_our_quality
		t.string 		:rate_our_design
		t.string 		:rate_our_variety
		t.string 		:rate_our_stitching
		t.string 		:rate_our_pricing
		t.string 		:rate_our_customer_care
	  t.timestamps
	end
  end
end
