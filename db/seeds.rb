# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

REDI_SEARCH.flushdb

User.delete_all
1000.times do |i|
  User.create!(name: Faker::Name.name, email: Faker::Internet.email, age: i)
end
# => create RediSearchRails indexes
User.ft_create
User.ft_add_all
