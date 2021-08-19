require_relative './player'

class Game
  def initialize 
    @player1 = Player.new("Angelina")
    @player2 = Player.new("Jennifer")
    # shuffle to randomly get starting player
    @players = [@player1, @player2].shuffle
    
  end

  def new_turn
    puts
    puts "---- NEW TURN ---"
    puts "#{@player1.name} vs #{@player2.name}"
    puts "-----------------"
    puts
    # or reverse, for players to take turns
    @players.rotate!
  end

  def display_scoreboard
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
    puts
  end

  def display_winner
    puts
    puts "#{@players.last.name} wins with the score #{@players.last.lives}/3"
    puts "---- GAME OVER ----"
    puts "     Good bye!"
    return
  end

  def game_over?
    @player1.lives == 0 || @player2.lives == 0
  end

  def asks_question
    first_num = rand(1..20)
    second_num = rand(1..20)
    @question_answer = first_num + second_num
    puts "#{current_player.name}: what's the total of #{first_num} and #{second_num}?"
  end

  def current_player
    @players.first
  end

  def play
    
    until game_over? do
      new_turn
      
      asks_question
      answer = gets.chomp

      if answer.to_i == @question_answer
        puts "YES! You are correct!"
      else
        puts "Seriously? NO!"
        current_player.loses_life
      end
      
    end

    game_over? ? display_winner : display_scoreboard
  end
end
