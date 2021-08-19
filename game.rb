require_relative './player'

class Game
  def initialize 
    @player1 = Player.new("Angelina")
    @player2 = Player.new("Jennifer")
    @players = [@player1, @player2].reverse
    @turn = 1
  end

  def play
    puts @player1
    puts @player2
  end
end