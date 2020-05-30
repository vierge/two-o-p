class Game
  attr_accessor :player1, :player2
  include Prompt
  def initialize
    @turn_count = 1
    @player1 = Player.new(1)
    @player2 = Player.new(2)
  end

  def turn
    puts "--- NEW TURN ---"
    current_player = @turn_count % 2 ? @player1 : @player2 
    q = Question.new
    puts "#{current_player.name}: What is the sum of #{q.x} and #{q.y}?"
    a = current_player.answer
    current_player.lives -= q.submit(a)
    puts "P1: #{@player1.lives} || P2: #{@player2.lives} "
    @turn_count += 1
  end
end