Shop.create(:shop_name => "GULBERG LHR")
Shop.create(:shop_name => "CENTAURUS ISD")
Shop.create(:shop_name => "Y Block DHA Lahore")
Shop.create(:shop_name => "Dubai Chowk Bahawalpur")
Shop.create(:shop_name => "Nishat Emporium Lahore")
Shop.create(:shop_name => "Xinhua Mall Shop")
Shop.create(:shop_name => "Allama Iqbal Town LHR")
Shop.create(:shop_name => "Faisalabad Store")
Shop.create(:shop_name => "Packages Mall")
Shop.create(:shop_name => "World Trade Center")
Shop.create(:shop_name => "Shaikhupura Store.")
Shop.create(:shop_name => "DOLMEN")
Shop.create(:shop_name => "Dolmen Mall Tariq Road")
Shop.create(:shop_name => "KEHKASHAN")
Shop.create(:shop_name => "Boulevard Mall HYD")
Shop.create(:shop_name => "Lucky One Mall")

Shop.all.each do |shop|
	shop.shop_number = "ShopNo-#{shop.id}"
	shop.shop_code = "ShopCode-#{shop.id}"
	shop.save
end