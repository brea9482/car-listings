class Manufacturer < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :country, presence: true

  has_many :cars

  COUNTRIES = [
    'Italy',
    'Germany',
    'Japan',
    'USA',
    'Canada',
    'France',
    'Britian',
    'China',
    'Sweden'
  ]
end
