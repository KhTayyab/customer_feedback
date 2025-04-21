class Customer < ApplicationRecord

	###### Validation #######
	validates :form_number, 	uniqueness: true

	####### Array Serializion #########
  serialize :hear_about_us, Array
  
end
