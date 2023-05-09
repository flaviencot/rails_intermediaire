# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

 10.times do 
   user = City.create!(name: Faker::Address.unique.city, zip_code: Faker::Address.unique.zip_code)
 end 
 
 current_city_ids = City.ids
 

 10.times do 
   user = User.create!(first_name: Faker::Name.first_name, 
   last_name: Faker::Name.unique.last_name,
   description: Faker::Quote.unique.famous_last_words, 
   email: Faker::Internet.unique.email ,
   age: Faker::Number.between(from: 18, to: 100),
   city_id: current_city_ids.sample)
 end 
 
current_user_ids = User.ids
 

 20.times do 
   user = Gossip.create!(title: Faker::Book.unique.title, 
   content: Faker::Lorem.paragraph, 
   user_id: current_user_ids.sample)
 end 
 

 10.times do 
   user = Tag.create!(title: Faker::Emotion.unique.noun)
 end 
 
current_tag_ids = Tag.ids
current_gossip_ids = Gossip.ids


 20.times do 
   user = Intertag.create!(gossip_id: current_gossip_ids.sample, tag_id: current_tag_ids.sample)
 end 


 20.times do 
   user = Comment.create!(content: Faker::Lorem.paragraph, 
   gossip_id: current_gossip_ids.sample, 
   user_id: current_user_ids.sample)
 end 


