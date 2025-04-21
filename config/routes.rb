Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :customers, :except => [:new, :edit, :index, :create, :update, :show, :destroy] do
        collection do
        	get 	:generate_code
        	get 	:shop_list
          post 	:save_customer_feedback
        end
      end
    end
  end
end
