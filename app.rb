require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:homepage)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "Tied"
  elsif @comp_move == "paper"
    @outcome = "Lost"
  else 
    @outcome = "Won"
  end

  erb(:rock)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "Won"
  elsif @comp_move == "paper"
    @outcome = "Tied"
  else 
    @outcome = "Lost"
  end

  erb(:paper)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "Tied"
  elsif @comp_move == "paper"
    @outcome = "Won"
  else 
    @outcome = "Tied"
  end

  erb(:scissors)
end

