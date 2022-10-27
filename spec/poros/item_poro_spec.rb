require 'rails_helper'

RSpec.describe 'Item Poro' do
  it 'exists and has attributes' do
    data = {attributes: {
      name: 'Spoon',
      description: 'Spoonlike',
      unit_price: 0.95,
      merchant_id: 1
    }}

    item = Item.new(data)

    expect(item.name).to eq('Spoon')
    expect(item.description).to eq('Spoonlike')
    expect(item.unit_price).to eq(0.95)
    expect(item.merchant_id).to eq(1)
  end
end