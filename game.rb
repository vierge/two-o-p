class Game
  attr_accessor :player1, :player2
  include Prompt
  def initialize
    @turn_count = 1
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    puts "Game Start! Who Is The God Hand?!"
    self.new_turn
  end

  def turn
    puts "--- NEW TURN ---"
    current_player = @turn_count % 2 == 1 ? @player1 : @player2 
    q = Question.new
    puts "#{current_player.name}: What is the sum of #{q.x} and #{q.y}?"
    a = current_player.answer
    current_player.lives -= q.submit(a)
    @turn_count += 1
    self.new_turn
  end

  def new_turn
    puts "P1: #{@player1.lives} || P2: #{@player2.lives} "
    if @player1.lives == 0 || @player2.lives == 0
      puts "!!!!!!!!!! GAME OVER. !!!!!!!!!!!"
      self.end_game
    else
      self.turn
    end
  end

  def end_game
    winner = !@player1.lives == 0 ? @player1.name : @player2.name
    puts "#{winner} puts the end to this laughable charade... the prize: a bouquet of kittens :3"
  end
end