# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

# Ingredient.create(name: "Light rum")
# Ingredient.create(name: "Scotch")
# Ingredient.create(name: "Orange bitters")
# Ingredient.create(name: "Gin")

Ingredient.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
list_serialized = open(url).read
list_of_ingredients = JSON.parse(list_serialized)
ingredients = list_of_ingredients["drinks"]

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end


