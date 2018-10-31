# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
	cities = City.create!(name: Faker::GameOfThrones.city, postal_code: Faker::Address.postcode)
end
10.times do
    users = User.create!(first_name: Faker::Superhero.name, last_name: Faker::BreakingBad.character, description: Faker::ChuckNorris.fact, email: Faker::Internet.email, city_id: Faker::Number.between(1,10), age: Faker::Number.between(18,90))
end

10.times do 
  tags = Tag.create!(title: Faker::OnePiece.island)
end

10.times do 
  comments = Comment.create!(content: Faker::StarWars.quote, anonymous_commentor: Faker::BackToTheFuture.character)
end
