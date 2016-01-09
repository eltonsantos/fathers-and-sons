# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#vFather.create name: "Barney", occupation: "Programador"

10.times do |n|
	name = Faker::Name.name
	birth_date = Faker::Date.backward(2500)
	occupation = Faker::Lorem.word
	Father.create name: name, birth_date: birth_date, occupation: occupation
end

10.times do |n|
	name = Faker::Name.name
	birth_date = Faker::Date.backward(1500)
	occupation = Faker::Lorem.word
	father_id = Faker::Number.between(1, 10)
	Son.create name: name, birth_date: birth_date, occupation: occupation, father_id: father_id
end