# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  Book.create(
    isbn: Faker::Code.isbn,
    name: Faker::Book.title,
    author: Faker::Book.author,
    year: Faker::Number.between(1900, 2019),
    genre: Faker::Number.between(1, 5),
    price: Faker::Commerce.price,
    status: Faker::Boolean.boolean
  )
end