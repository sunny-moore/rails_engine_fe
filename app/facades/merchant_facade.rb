class MerchantFacade

  def self.all_merchants
    result = MerchantService.all_merchants

    result[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchant_items(merchant_id)
    result = MerchantService.merchant_items(merchant_id)

    result[:data].map do |item|
      Item.new(item)
    end
  end
end