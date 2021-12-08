# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
include FactoryBot::Syntax::Methods

create(:setting, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone_in_e164, address: Faker::Address.full_address, status: 'Looking for new opportunities')


start_date = Date.today
(1..10).each do
  description = Faker::Lorem.paragraph_by_chars
  create(:experience, start_date: start_date - 6.months, end_date: start_date, description: description, url: Faker::Internet.url)
  start_date = start_date - 6.months
end
