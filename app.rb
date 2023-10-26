require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/process_roll/:num_dice/:sides_dice") do
  @num_of_dice = params.fetch(":num_dice").to_i
  @num_of_sides = params.fetch(":sides_dice").to_i

  @rolls = []

  @num_of_dice.times do 
    die = rand(1..@num_of_sides)
    @rolls.push(die)
  end

  erb(:flexible)
end
