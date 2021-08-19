class Player
  # getter
  attr_reader :name

  # getter and setter
  attr_accessor :score

  def initialize(name)
    @name = name
    @lives = 3
  end

  def asks_question
    first_num = rand(1..20)
    second_num = rand(1..20)

    puts "What's the total of #{first_num} and #{second_num}?"
  end

  def lost_all_lives?
    @lives = 0
  end

end