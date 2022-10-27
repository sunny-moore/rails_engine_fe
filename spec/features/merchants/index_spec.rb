require 'rails_helper'

RSpec.describe 'Merchants Index Page' do
  it 'lists all merchants by name', vcr: 'all_merchants' do
    visit merchants_path

    expect(page).to have_content('Schroeder-Jerde')
    expect(page).to have_content('Cummings-Thiel')
    expect(page).to have_content('Williamson Group')
  end
  it 'has links to each merchants items', vcr: 'all_merchants' do
    visit merchants_path

    expect(page).to have_link('Schroeder-Jerde')
    expect(page).to have_link('Cummings-Thiel')
    expect(page).to have_link('Williamson Group')
  end
end