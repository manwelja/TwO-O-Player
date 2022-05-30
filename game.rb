class Game
  attr_reader :players, :player1, :player2
  attr_accessor :winner, :game_over
  
  ERROR_MESSAGE = "Seriously? No"
  SUCCESS_MESSAGE = "YES!  You are correct."
  WINNER_MESSAGE = "wins with a score of"
  NEW_TURN = "----- NEW TURN -----"
  GAME_OVER = "----- GAME OVER -----"

  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
    @players=[@player1, @player2].shuffle
    @winner = ""
    @game_over = false
    @round = 1
  end 
  
  def present_question(player_num)
    num1 = rand(1..10)
    num2 = rand(1..10)
    answer = num1 + num2
    puts "\n#{NEW_TURN}"
    puts "#{@players[player_num].name}: What does #{num1} + #{num2} equal"
    player_answer = gets.chomp

    if answer == player_answer.to_i
      return true
    else
      return false
    end
  end  

  def print_wrong_answer(player_num)
    puts "#{@players[player_num].name}: Seriously? No"
  end  
  
  def print_right_answer(player_num)
    puts "#{@players[player_num].name}: YES!  You are correct"
  end    

  def print_stats
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3" 
  end  

  def set_winner(player_num)
    @winner = @players[player_num]
    @game_over = true
    puts "#{@winner.name} #{WINNER_MESSAGE}"
  end   
end