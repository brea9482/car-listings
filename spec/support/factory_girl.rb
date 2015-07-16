require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :manufacturer do
    sequence(:name) { |n| "manufacturer#{n}"}
    country "Japan"
  end

  factory :car do
    color "blue"
    year 2004
    mileage 60_000
    description "Great car"

    manufacturer
end
end
