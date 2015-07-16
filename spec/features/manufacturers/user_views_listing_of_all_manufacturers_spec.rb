
require 'rails_helper'

feature 'User submits a new manufacturer', %Q{
  As a car salesperson
  I want to see a listing of all car manufacturers
  So that I can keep track of the types of cars found in the lot
  } do

  scenario 'User views a listings of all manufacturer' do

    manufacturer_one = FactoryGirl.create(:manufacturer)
    manufacturer_two = FactoryGirl.create(:manufacturer)

    visit manufacturers_path

    expect(page).to have_content(manufacturer_one.name)
    expect(page).to have_content(manufacturer_two.name)
  end
end
