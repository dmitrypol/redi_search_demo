# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

REDI_SEARCH.flushall

#User.delete_all
ap "begin User                      #{Time.now}"
1000.times do |i|
  User.create(name: Faker::Name.name,
              email: Faker::Internet.email,
              age: rand(10..50),
              status: USER_STATUS.sample,
              roles: [USER_ROLES.sample],
              )
end
ap "begin User RediSearchRails      #{Time.now}"
User.ft_create
User.ft_add_all
ap "complete User RediSearchRails   #{Time.now}"


ap "begin Article                      #{Time.now}"
1000.times do |i|
  Article.create(title: Faker::Lorem.sentence,
              body: Faker::Lorem.paragraph,
              user_id: rand(1..1000),
              )
end
ap "begin Article RediSearchRails      #{Time.now}"
Article.ft_create
Article.ft_add_all
ap "complete Article RediSearchRails   #{Time.now}"
