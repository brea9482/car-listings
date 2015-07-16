var = Manufacturer.create!(name: 'Audi', country: 'Germany')
Manufacturer.create!(name: 'Volvo', country: 'Sweden')

Car.create!(manufacturer: var, color: 'Red', mileage: 20_000, year: 1984)
