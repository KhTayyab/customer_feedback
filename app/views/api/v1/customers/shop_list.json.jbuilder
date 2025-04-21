json.shops @shops.each do |shop|
	json.id shop.try(:id)
	json.shop_name shop.try(:shop_name)
end