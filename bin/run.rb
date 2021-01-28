require_relative '../config/environment'
require_relative 'api_parsing'


 
puts "Welcome to the Cocktail Recipe Interface"
puts "Please enter your username"
user_name = gets.chomp #call find_or_create_by_name method in user.rb
current_user = User.find_or_create_by_name(user_name)
binding.pry
puts "What would you like to do?"
puts "1. Find a random recipe by ingredient" 
    #call suggest_random_recipe using find_recipe_by_ingredient method and then 
    #picking a random array element in recipe.rb 
    #be sure to prompt_user_for_rating
puts "2. Show my favorite recipes"
    #traverse through user_recipe table to find highest ratings and return as an array
puts "3. Suggest a new recipe"
    #traverse through recipes and spit out random one
    #be sure to prompt_user_for_rating
puts "4. Look up a recipe by recipe name"
    #call find_recipe_by_name
puts "5. List all recipes with a certain ingredient"
    #call find_recipe_by_ingredient method and return an array of choices
puts "6. Import a recipe from the database"
choice = gets.chomp
choice = choice.to_i

# if choice == 1
#     puts "Enter an ingredient and we'll give you a recipe"
#     recipe = gets.chomp
#     get_data(recipe)
# end 

# if choice == 2
#     puts "Here are your favorite recipes"
#     recipe = gets.chomp
#     get_data(recipe)
# end 


# if choice == 4
#     puts "Enter recipe name"
#     recipe = gets.chomp
#     get_data(recipe)
# end 

# if choice == 5
#     puts "Enter an ingredient"
#     recipe = gets.chomp
#     get_data(recipe)
# end 


if choice == 3
    current_recipe = Recipe.suggest_random_recipe
    puts "Here's a suggestion!"
    get_data(name) 

    elseif choice == 6 

    puts "Enter the recipe name you are looking for"
    name = gets.chomp
    get_data(name)
end 
    #if choice == 1 do blah blah blah etc.

#make method prompt_user_for_rating which will ask for a rating 
#then store it with the recipe in the user_recipe table
#make method update_rating ?
