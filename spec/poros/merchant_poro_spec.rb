require 'rails_helper'

RSpec.describe 'Merchant Poro' do
  it 'exists and has attributes' do
    data = {id: 1, attributes: {name: 'Target'}}
    merchant = Merchant.new(data)

    expect(merchant.id).to eq(data[:id])
    expect(merchant.name).to eq(data[:attributes][:name])
  end
end