# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
  Book.create!([
    {title: "Clockwork Orange", author: "Anthony Burgess", price:4.59, published_date: Date.new(1962, 3, 3)},
    {title: "The Poet", author: "Michal Connelly", price:7.99, published_date: Date.new(1996, 10, 17)},
    {title: "The Devil in the White City", author: "Eric Larson", price:4.29 , published_date: Date.new(2003, 2, 11)},
    {title: "The Great Gatsby", author: "F. Scott Fitzgerald", price:5.85 , published_date: Date.new(1925,4,10)},
    {title: "The Way of Kings", author: "Brandon Sanderson", price:9.89 , published_date: Date.new(2010,8,31)}
  ])
