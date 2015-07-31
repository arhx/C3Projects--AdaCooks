# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = [
  { username: "sherbet", password: "dairy", password_confirmation: "dairy" },
  { username: "sorbet", password: "sugar", password_confirmation: "sugar" },
  { username: "werehawke", password: "666", password_confirmation: "666" }
]

users.each do |user_params|
  User.create(user_params)
end

recipes = [
  { name: "Mint chocolate chip ice cream", description: "creamy, minty goodness",
    image: File.open(File.join('app/assets/images/recipes/mint.jpg')), user_id: 1 },
  { name: "French vanilla ice cream", description: "rich custard with flecks of real vanilla bean",
    image: File.open(File.join('app/assets/images/recipes/frenchvanilla.jpg')), user_id: 1 },
  { name: "Cappuccino gelato", description: "smooth, with flecks of coffee",
    image: File.open(File.join('app/assets/images/recipes/cap.jpg')), user_id: 1 },
  { name: "Chocolate hazelnut gelato", description: "the perfect flavor pairing for autumn",
    image: File.open(File.join('app/assets/images/recipes/hazelnut.jpg')), user_id: 1 },
  { name: "Raspberry sorbet", description: "crisp and vibrant with a hint of sweetness",
    image: File.open(File.join('app/assets/images/recipes/rasp.jpg')), user_id: 2 },
  { name: "Honey lavendar ice cream", description: "light herbal notes with wildflower sweetness",
    image: File.open(File.join('app/assets/images/recipes/honey.jpg')), user_id: 2 },
  { name: "Nisqually flood ice cream", description: "gummy worms and chocolate twigs float in this homage to the power of nature",
    image: File.open(File.join('app/assets/images/recipes/gummy.jpg')), user_id: 2 },
  { name: "Candied ginger ice cream", description: "a custard base topped with chunks of tangy candied ginger",
    image: File.open(File.join('app/assets/images/recipes/ginger.jpg')), user_id: 2 },
  { name: "Lemon sorbet", description: "light, crisp, and refreshing citrus",
    image: File.open(File.join('app/assets/images/recipes/lemon.jpg')), user_id: 3 },
  { name: "Raspberry chevre ice cream", description: "goat's milk ice cream with chunks of mild chevre and a raspberry ribbon",
    image: File.open(File.join('app/assets/images/recipes/chevre.jpg')), user_id: 3 },
  { name: "Wild blackberry ice cream", description: "fresh fruit bursting with flavor in a sweet cream base",
    image: File.open(File.join('app/assets/images/recipes/blackberry.jpg')), user_id: 3 },
  { name: "Maple walnut ice cream", description: "earthy and rich with sweet tree sap",
    image: File.open(File.join('app/assets/images/recipes/maple.jpg')), user_id: 3 }
]

recipes.each do |recipe_params|
  new_recipe = Recipe.new(recipe_params)
  new_recipe.preparation = "1. Heat cream, add to yolks to temper. 2. Freeze in ice cream maker. 3. Enjoy!"
  new_recipe.save
end

cookbooks = [
  { name: "Ice Creams I Have Loved", description: "a walk down memory lane", user_id: 1 },
  { name: "Sorbet 4 Daze", description: "non-dairy treats for the lactose intolerant", user_id: 1 },
  { name: "Gelato to Da Max", description: "Hawaiian-Italian fusion desserts", user_id: 2 },
  { name: "Frozen Desserts", description: "ice cream, gelato, sorbet, sherbet, kulfi, etc.", user_id: 2 },
  { name: "I Scream, You Scream", description: "we all scream, of ice cream", user_id: 3 },
  { name: "The Dao of Ice Cream", description: "reaching enlightenment via massive consumption of ice cream", user_id: 3 }
]

cookbooks.each do |cookbook_params|
  Cookbook.create(cookbook_params)
end

ingredients = [
  { user_id: 1, name: "heavy cream", image: File.open(File.join('app/assets/images/ingredients/cream.jpg'))},
  { user_id: 1, name: "vanilla", image: File.open(File.join('app/assets/images/ingredients/vanilla.jpg'))},
  { user_id: 1, name: "white sugar", image: File.open(File.join('app/assets/images/ingredients/sugar.jpg')) },
  { user_id: 1, name: "maple syrup", image: File.open(File.join('app/assets/images/ingredients/maple.jpg')) },
  { user_id: 1, name: "egg yolks",image: File.open(File.join('app/assets/images/ingredients/yolks.jpg')) },
  { user_id: 1, name: "whole milk", image: File.open(File.join('app/assets/images/ingredients/milk.jpg')) },
  { user_id: 1, name: "caramel", image: File.open(File.join('app/assets/images/ingredients/caramel.jpg'))},
  { user_id: 2, name: "fleur de sel", image: File.open(File.join('app/assets/images/ingredients/fleur.jpg'))},
  { user_id: 2, name: "lavender", image: File.open(File.join('app/assets/images/ingredients/lavender.jpg')) },
  { user_id: 2, name: "lemon juice", image: File.open(File.join('app/assets/images/ingredients/lemonjuice.jpg')) },
  { user_id: 2, name: "wild blackberries", image: File.open(File.join('app/assets/images/ingredients/blackberries.jpg')) },
  { user_id: 2, name: "fresh chevre", image: File.open(File.join('app/assets/images/ingredients/chevre.jpg')) },
  { user_id: 2, name: "toasted hazelnuts", image: File.open(File.join('app/assets/images/ingredients/hazelnuts.jpg')) },
  { user_id: 3, name: "unsweetened chocolate", image: File.open(File.join('app/assets/images/ingredients/choco.jpg')) },
  { user_id: 3, name: "cocoa powder", image: File.open(File.join('app/assets/images/ingredients/cocoa.jpg')) },
  { user_id: 3, name: "fresh mint leaves", image: File.open(File.join('app/assets/images/ingredients/mint.jpg')) },
  { user_id: 3, name: "vanilla bean", image: File.open(File.join('app/assets/images/ingredients/vanillabean.jpg')) },
  { user_id: 3, name: "toasted walnuts", image: File.open(File.join('app/assets/images/ingredients/walnuts.jpg')) },
  { user_id: 3, name: "honey", image: File.open(File.join('app/assets/images/ingredients/honey.jpg')) },
  { user_id: 3, name: "fresh raspberries", image: File.open(File.join('app/assets/images/ingredients/raspberries.jpg')) }
]

ingredients.each do |ingredient_params|
  Ingredient.create(ingredient_params)
end

recipe_ingredients = [
  { recipe_id: 1, ingredient_id: 2, quantity: "2", measurement_id: 1 },
  { recipe_id: 1, ingredient_id: 4, quantity: "1/2", measurement_id: 2 },
  { recipe_id: 1, ingredient_id: 1, quantity: "3", measurement_id: 3 },
  { recipe_id: 2, ingredient_id: 5, quantity: "0.5", measurement_id: 4 },
  { recipe_id: 2, ingredient_id: 2, quantity: "half", measurement_id: 5 },
  { recipe_id: 2, ingredient_id: 7, quantity: "5", measurement_id: 6 },
  { recipe_id: 3, ingredient_id: 3, quantity: "1", measurement_id: 7 },
  { recipe_id: 3, ingredient_id: 4, quantity: "2", measurement_id: 8 },
  { recipe_id: 3, ingredient_id: 6, quantity: "4", measurement_id: 9 },
  { recipe_id: 4, ingredient_id: 1, quantity: "100", measurement_id: 10 },
  { recipe_id: 4, ingredient_id: 5, quantity: "4", measurement_id: 11 },
  { recipe_id: 4, ingredient_id: 3, quantity: "2", measurement_id: 1 },
  { recipe_id: 5, ingredient_id: 1, quantity: "2", measurement_id: 2 },
  { recipe_id: 5, ingredient_id: 2, quantity: "2", measurement_id: 3 },
  { recipe_id: 5, ingredient_id: 3, quantity: "2", measurement_id: 4 },
  { recipe_id: 6, ingredient_id: 4, quantity: "2", measurement_id: 5 },
  { recipe_id: 6, ingredient_id: 5, quantity: "2", measurement_id: 6 },
  { recipe_id: 6, ingredient_id: 6, quantity: "2", measurement_id: 7 },
  { recipe_id: 7, ingredient_id: 7, quantity: "2", measurement_id: 8 },
  { recipe_id: 7, ingredient_id: 8, quantity: "2", measurement_id: 9 },
  { recipe_id: 7, ingredient_id: 9, quantity: "2", measurement_id: 10 },
  { recipe_id: 8, ingredient_id: 1, quantity: "2", measurement_id: 11 },
  { recipe_id: 8, ingredient_id: 2, quantity: "2", measurement_id: 1 },
  { recipe_id: 8, ingredient_id: 3, quantity: "2", measurement_id: 2 },
  { recipe_id: 9, ingredient_id: 4, quantity: "2", measurement_id: 3 },
  { recipe_id: 9, ingredient_id: 5, quantity: "2", measurement_id: 2 },
  { recipe_id: 9, ingredient_id: 6, quantity: "2", measurement_id: 4 },
  { recipe_id: 10, ingredient_id: 1, quantity: "2", measurement_id: 3 },
  { recipe_id: 10, ingredient_id: 2, quantity: "2", measurement_id: 4 },
  { recipe_id: 10, ingredient_id: 15, quantity: "2", measurement_id: 2 },
  { recipe_id: 11, ingredient_id: 12, quantity: "2", measurement_id: 1 },
  { recipe_id: 11, ingredient_id: 13, quantity: "2", measurement_id: 2 },
  { recipe_id: 11, ingredient_id: 12, quantity: "2", measurement_id: 6 },
  { recipe_id: 12, ingredient_id: 11, quantity: "2", measurement_id: 1 },
  { recipe_id: 12, ingredient_id: 10, quantity: "2", measurement_id: 8 },
  { recipe_id: 12, ingredient_id: 9, quantity: "2", measurement_id: 9 }
]

recipe_ingredients.each do |recipe_ingredient_params|
  RecipeIngredient.create(recipe_ingredient_params)
end

measurements = [
  { unit: "dab" },
  { unit: "cup" },
  { unit: "tsp" },
  { unit: "TBSP" },
  { unit: "pinch" },
  { unit: "sprinkle" },
  { unit: "gram" },
  { unit: "pound" },
  { unit: "cc" },
  { unit: "handful" },
  { unit: "ounce" }
]

measurements.each do |measurement_params|
  Measurement.create(measurement_params)
end

cookbook1, cookbook2, cookbook3, cookbook4, cookbook5, cookbook6 = Cookbook.all

cookbook1.recipes << Recipe.find([1,3,5,7,9,11])
cookbook2.recipes << Recipe.find([1,3,5,8,10,12])
cookbook3.recipes << Recipe.find([2,4,6,7,9,11])
cookbook4.recipes << Recipe.find([2,4,6,8,10,12])
cookbook5.recipes << Recipe.find([1,7,4,12])
cookbook6.recipes << Recipe.find([2,8,5,11])
