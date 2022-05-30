class Player
  attr_accessor :lives
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
  end  

  def subtract_life
    self.lives -= 1
  end  

end