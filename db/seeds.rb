# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
SubCategory.destroy_all
TopicThread.destroy_all
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


#profiles s

Profile.create(name:Faker::Games::SuperSmashBros.fighter, username: Faker::Games::Witcher.character, zip_code: 10538, age: 21)
Profile.create(name:Faker::Games::SuperSmashBros.fighter, username: Faker::Games::Witcher.character, zip_code: 10583, age: 21)
Profile.create(name:Faker::Games::SuperSmashBros.fighter, username: Faker::Games::Witcher.character, zip_code: 11415, age: 21)

#topic threads
10.times do
    TopicThread.create(title:Faker::Book.title , 
        description: Faker::Lorem.sentence, views:rand(1..100) , profile_id: Profile.all.sample.id , 
        sub_category_id: SubCategory.all.sample.id)
end








