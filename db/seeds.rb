# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

REDI_SEARCH.flushall

#User.delete_all
100.times do |i|
  User.create(name: Faker::Name.name,
              email: Faker::Internet.email,
              age: rand(10..50),
              status: USER_STATUS.sample
              )
end
# => create RediSearchRails indexes
User.ft_create
User.ft_add_all
