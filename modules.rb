module Prompt
  def prompt
    print "> "
    val = gets.chomp
    return val
  end
end