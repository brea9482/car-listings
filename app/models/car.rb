class Car < ActiveRecord::Base
  validates :color, presence: true
  validates :year, presence: true, numericality: { greater_than_or_equal_to: 1920, less_than_or_equal_to: 2016 }
  validates :mileage, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :manufacturer, presence: true

  belongs_to :manufacturer

  COLOR = [
    'Red',
    'White',
    'Blue',
    'Green',
    'Black',
    'Orange',
    'Gray',
    'Yellow'
  ]
end
