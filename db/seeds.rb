# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Salon.delete_all

50.times do
  Salon.create(name: Faker::App.name, address: Faker::Address.street_address, zip_code: Faker::Address.zip_code, phone_number: Faker::PhoneNumber.cell_phone)
end

categories = Category.create([
  {category_type: "Hair"},
  {category_type: "Nails"},
  {category_type: "Skin Treatment"},
  {category_type: "Wax"},
  {category_type: "Make-up"},
  {category_type: "Lashes"},
])






