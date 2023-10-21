class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def reduce_life
    @lives -= 1
    "#{@name} loses a life, #{@name} is left with #{@lives} lives"

  end

  def is_alive?
    @lives > 0
  end
end