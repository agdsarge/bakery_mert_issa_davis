
require_relative "./ingredient.rb"
require_relative "./recipe.rb"
require_relative "./dessert.rb"

dough = Ingredient.new("dough", 120)
sugar = Ingredient.new("sugar", 100)
choc = Ingredient.new("chocolate", 110)
choc_sprinkle = Ingredient.new("chocolate sprinkle", 80)
choc_mousse = Ingredient.new("chocolate mousse", 90)


puts dough.name
puts Ingredient.find_all_by_name("chocolate")

sug_cookie = Dessert.new("sugar cookie")

puts sug_cookie.name
Recipe.new(sugar, sug_cookie)
Recipe.new(dough, sug_cookie)

puts sug_cookie.ingredients.map {|x| x.name}
puts sug_cookie.calories
