require 'rails_helper'

RSpec.describe 'Merchant Facade' do
  it 'can connect and return an array of Merchant objects', vcr: 'all_merchants' do
    merchants = MerchantFacade.all_merchants

    expect(merchants).to be_a Array

    merchants.each do |merchant|
      expect(merchant).to be_a Merchant
      expect(merchant.id).to be_a String
      expect(merchant.name).to be_a String
    end
  end

  it 'can return a merchants items', vcr: 'merchant_items' do
    items = MerchantFacade.merchant_items(1)

    expect(items).to be_a Array

    items.each do |item|
      expect(item).to be_a Item
      expect(item.name).to be_a String
      expect(item.description).to be_a String
      expect(item.unit_price).to be_a Float
      expect(item.merchant_id).to be_a Integer
      expect(item.merchant_id).to eq(1)
    end
  end
end