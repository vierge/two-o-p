class Question
  attr_accessor :x, :y, :solution
  def initialize
    self.x = rand(20)
    self.y = rand(20)
    self.solution = self.x + self.y
  end

  def submit(int)
    val = int == self.solution
    puts val ? "NICE. I LOVE IT" : "STUPID" 
    return val ? 0 : 1
  end
end