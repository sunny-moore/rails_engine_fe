require 'rails_helper'

RSpec.describe 'Merchant Service' do
  it 'can connect and return all merchants', vcr: 'all_merchants' do
    merchants = MerchantService.all_merchants

    expect(merchants).to be_a Hash
    expect(merchants[:data]).to be_a Array
    expect(merchants[:data][0][:type]).to eq('merchant')
  end

  it 'can return a merchants items', vcr: 'merchant_items' do

    items = MerchantService.merchant_items(1)

    expect(items).to be_a Hash
    expect(items[:data]).to be_a Array
    expect(items[:data][0][:type]).to eq('item')
  end
end