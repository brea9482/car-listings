
require 'rails_helper'

feature 'User submits a new manufacturer', %Q{
  As a car salesperson
  I want to record a car manufacturer
  So that I can keep track of the types of cars found in the lot
  } do

  scenario 'User creates a new manufacturers' do

    visit new_manufacturer_path

    fill_in 'Name', with: 'Audi'
    select 'Germany', from: 'Country'

    click_on 'Submit new manufacturer'

    expect(page).to have_content("Manufacturer saved!")
    expect(page).to have_content('Audi')
    expect(page).to have_content('Germany')
  end

  scenario 'user submits a manufacturer without a name' do

    visit new_manufacturer_path

    fill_in 'Name', with: ''
    select 'Germany', from: 'Country'

    click_on 'Submit new manufacturer'

    expect(page).to have_content "Name can't be blank"
  end

  scenario 'user submits an existing manufacturer' do

    visit new_manufacturer_path

    manufacturer = FactoryGirl.create(:manufacturer)

    fill_in 'Name', with: manufacturer.name
    select 'Germany', from: 'Country'

    click_on 'Submit new manufacturer'

    expect(page).to have_content "has already been taken"
  end
end
