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

game = Game.new
game.turn