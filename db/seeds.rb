# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database"
Article.destroy_all

puts "Creating articles"

10.times do
  article = Article.create(
    title: Faker::Company.catch_phrase,
    content: Faker::Hipster.paragraph
  )
  puts "Article with id #{article.id} has been created"
end

puts "Finished!"
