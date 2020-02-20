# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
puts "Creating Ingredients..."
Ingredient.create!()
puts "Successful"

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Apple")
Ingredient.create(name: "Basil")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Aperol")
Ingredient.create(name: "Orange")
Ingredient.create(name: "Sparkling Wine")
