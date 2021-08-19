class Player

  # getter and setter
  attr_accessor :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  

  def loses_life
    @lives = @lives - 1
  end

  def lost_all_lives?
    @lives = 0
  end

end