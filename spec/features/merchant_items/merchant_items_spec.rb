require 'rails_helper'

RSpec.describe 'Merchant Items Index' do
  it 'lists all items for a merchant', vcr: 'merchant_items' do
    visit merchant_items_path(1)

    expect(current_path).to eq(merchant_items_path(1))
    expect(page).to have_content('Item Name: Item Nemo Facere')
    expect(page).to have_content('Item Description: Sunt eum id eius magni')
    expect(page).to have_content('Item Price: 42.91')
    expect(page).to have_content('Item Merchant ID: 1')
  end
end