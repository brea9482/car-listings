require 'rails_helper'

feature 'user submits a new car', %{
  As a car salesperson
  I want to record a newly acquired car
  So that I can list it in my lot
  } do

  scenario 'user submits a new car' do
    manufacturer = FactoryGirl.create(:manufacturer)

    visit new_car_path

    select manufacturer.name, from: 'Manufacturer'
    select 'Red', from: 'Color'
    fill_in 'Year', with: 1984
    fill_in 'Mileage', with: 1000
    fill_in 'Description', with: 'this car is crazy'
    click_on 'Add a new car'

    expect(page).to have_content('Red')
    expect(page).to have_content('1984')
    expect(page).to have_content('1000')

    expect(page).to have_content('Car saved!')
  end

  scenario 'user submits an invalid cars' do

    visit new_car_path

    select 'Red', from: 'Color'
    fill_in 'Year', with: 1984
    fill_in 'Mileage', with: ''
    fill_in 'Description', with: ''
    click_on 'Add a new car'

    expect(page).to have_content('Car not saved! See below for errors.')
  end
end
