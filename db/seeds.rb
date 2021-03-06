# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
User.destroy_all
Gossip.destroy_all 
Tag.destroy_all

 10.times do   
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
 end 

 10.times do 	  
	User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		description: Faker::Quote.most_interesting_man_in_the_world,
		email: Faker::Internet.email,
		age: Faker::Number.between(from: 15, to: 99),
		city: City.all.sample)
 end

80.times do
  JoinTableGossipTag.create(gossip: Gossip.all.sample, tag: Tag.all.sample)
end

20.times do
  Comment.create(user: User.all.sample, commentable: Gossip.all.sample, content: Faker::Quote.matz)
end

 20.times do 		
 	Gossip.create(title: Faker::Quote.singular_siegler, content: Faker::Quote.yoda, user: User.all.sample)
 end

 10.times do   	 
 	Tag.create(title: Faker::Book.genre)
 end