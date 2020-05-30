# require 'pp'
# require 'player'
# require 'game'
# require 'question'  

# class Game
#   def initialize
#     player1 = Player.new(input.to_i)
#     player2 = Player.new(input.to_i)
#   end

#   def input
#     val = gets.chomp 
#     return val
#   end
# end

require './modules'
require './player'
require './game'
require './question'


game = Game.new
# puts "Play again? y/n"
# go_again = gets.chomp
# if go_again == "y"
#   game = Game.new
# elsif go_again == "n"
#   puts "ok, bye!"
#   return
# else
#   puts "ERRORROROROEEEORORER"
#   return
# end