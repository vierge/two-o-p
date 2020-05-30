class Player
  include Prompt
  attr_accessor :name, :lives
  def initialize(player)
    @player = player
    self.name = input(player)
    self.lives = 3
  end
  
  def input(player)
    puts "Hey! What's your name?"
    name = self.prompt
    puts "welcome, #{name}! you are player #{player}"
    return name
  end

  def answer 
    n = self.prompt
    return n.to_i
  end
end
