# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..100).each do |i|
	User.create(name: Faker::Name.name, age: Faker::Number.number(2), description: Faker::Hacker.adjective, group_id: (i.to_i%2+1))
end
