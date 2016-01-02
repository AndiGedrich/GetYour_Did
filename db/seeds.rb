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


technicians = Technician.create([
  {name: "Erica Holms", body: "Hi - my passion is for color, I love achieving all colors of the rainbow!  If you want to look like a My Little Pony, I am the colorist for you.  I also specialize in short and shoulder length cuts.", email: "erica_does_hair@gmail.com", password_digest: "12345", salon_id: 3},
  {name: "Britney Mendoza", body: "Hi - I specialize in special occasion hair and make-up and I love vintage styles such as pin-up, mod and 40s.", email: "britney_does_hair@gmail.com", password_digest: "6789", salon_id: 4},
  {name: "Charles", body: "Eyebrows and eyelashes are my speciality!  I also love modern make-up for weddings and special occasions.", email: "charles_looks_good@gmail.com", password_digest: "lashes", salon_id: 6},
])



