
require 'rails_helper'

feature 'User submits a new car', %Q{
  As a car salesperson
  I want to see a listing of all cars
  So that I can keep track of the types of cars found in the lot
  } do

  scenario 'User views a listings of all cars' do

    car_one = FactoryGirl.create(:car)
    car_two = FactoryGirl.create(:car)

    visit cars_path

    expect(page).to have_content(car_one.color)
    expect(page).to have_content(car_two.color)
  end
end
