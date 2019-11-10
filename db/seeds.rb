# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Use rake db:reset to reset and re-migrate the database.




50.times do |n|
	email = Faker::Internet.email
	password = "password"
	User.create!(
		email: email,
		password: password,
		password_confirmation: password)
	puts "created user #{n+1}"
end

users = User.all 

i = 0
users.each do |user| 
	i+= 1
	title = Faker::Internet.user_name
	notes = Faker::Address.city
	user.build_todo(
		title: title,
		notes: notes)
	user.save!
	puts "created todo #{i}"
end 


50.times do |n|
	email = Faker::Internet.email
	password = "password"
	User.create!(
		email: email,
		password: password,
		password_confirmation: password)
	puts "created user #{n+1}"
end

users = User.all 

i = 0
users.each do |user| 
	i+= 1
	title = Faker::Internet.user_name
	notes = Faker::Address.city
	user.build_todo(
		title: title,
		notes: notes)
	user.save!
	puts "created todo #{i}"
end
