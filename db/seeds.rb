# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Country.create!(country: 'United States')
Country.create!(country: 'Canada')
Country.create!(country: 'Mexico')
Port.create!(port: 'Seattle', country_id: '1')
Port.create!(port: 'Tacoma', country_id: '1')
Port.create!(port: 'Port Angeles', country_id: '1')
Port.create!(port: 'Anacortes', country_id: '1')
Port.create!(port: 'Portland', country_id: '1')
Port.create!(port: 'Oakland', country_id: '1')
Port.create!(port: 'San Francisco', country_id: '1')
Port.create!(port: 'Long Beach', country_id: '1')
Port.create!(port: 'Los Angeles', country_id: '1')
Port.create!(port: 'San Diego', country_id: '1')
Port.create!(port: 'Cedros', country_id: '3')
Port.create!(port: 'Vancouver', country_id: '2')
