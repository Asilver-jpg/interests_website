# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Interest.destroy_all
Post.destroy_all
TopicThread.destroy_all
SubCategory.destroy_all
Category.destroy_all
Profile.destroy_all




#primary categories
Category.create(name: "Art")
Category.create(name: "Sports")
Category.create(name: "Games")
Category.create(name: "Music")
Category.create(name: "Movies")
Category.create(name: "TV Shows")

#sub categories
SubCategory.create(name:"Impressionism", category_id: Category.find_by(name: "Art").id)
SubCategory.create(name:"Cubism",  category_id:  Category.find_by(name: "Art").id)
SubCategory.create(name:"Soccer",  category_id:  Category.find_by(name: "Sports").id)
SubCategory.create(name:"Football",  category_id:  Category.find_by(name: "Sports").id)
SubCategory.create(name:"Basketball",  category_id:  Category.find_by(name: "Sports").id)
SubCategory.create(name: "Video Games", category_id: Category.find_by(name:"Games").id)
SubCategory.create(name: "Board Games", category_id: Category.find_by(name:"Games").id)
SubCategory.create(name: "Card Games", category_id: Category.find_by(name:"Games").id)
SubCategory.create(name: "Action Movies", category_id: Category.find_by(name:"Movies").id)
SubCategory.create(name: "Fantasy Movies", category_id: Category.find_by(name:"Movies").id)
SubCategory.create(name: "Horror Movies", category_id: Category.find_by(name:"Movies").id)
SubCategory.create(name: "Sitcoms", category_id: Category.find_by(name:"TV Shows").id)
SubCategory.create(name: "Sci-Fi", category_id: Category.find_by(name:"TV Shows").id)
SubCategory.create(name: "Fantasy", category_id: Category.find_by(name:"TV Shows").id)
SubCategory.create(name: "Soap Operas", category_id: Category.find_by(name:"TV Shows").id)


#profiles s

Profile.create(name:Faker::Games::SuperSmashBros.fighter, username: Faker::Games::Witcher.character, zip_code: Faker::Address.zip_code, age: rand(13..50), password: 'pass123')
Profile.create(name:Faker::Games::SuperSmashBros.fighter, username: Faker::Games::Witcher.character, zip_code: Faker::Address.zip_code, age: rand(13..50), password: 'pass123')
Profile.create(name:Faker::Games::SuperSmashBros.fighter, username: Faker::Games::Witcher.character, zip_code: Faker::Address.zip_code, age: rand(13..50), password: 'pass123')
Profile.create(name:Faker::Games::SuperSmashBros.fighter, username: Faker::Games::Witcher.character, zip_code: Faker::Address.zip_code, age: rand(13..50), password: 'pass123')
Profile.create(name:Faker::Games::SuperSmashBros.fighter, username: Faker::Games::Witcher.character, zip_code: Faker::Address.zip_code, age: rand(13..50), password: 'pass123')

#topic threads
30.times do
TopicThread.create(title:Faker::Book.title, description: Faker::Lorem.sentence, views:rand(1..100), profile_id: Profile.all.sample.id, sub_category_id: SubCategory.all.sample.id)
end
puts 'generating seed data'








