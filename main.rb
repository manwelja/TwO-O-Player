require_relative "./player"
require_relative "./game"

curr_player = 0

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
g1 = Game.new(p1, p2)

while g1.game_over == false
  #present the user with a simple math question
  result = g1.present_question(curr_player)
  
  #if the answer is wrong
  if(!result)
    #print wrong answer message
    g1.print_wrong_answer(curr_player)
    #subtract 1 from the current player's life - if 0 lives left, game over!
    g1.players[curr_player].subtract_life
  else  
    #print right answer message
    g1.print_right_answer(curr_player)
  end  
  g1.print_stats
  #if the current player has run out of lives, set the winner and Game Over!
  if (g1.players[curr_player].lives == 0)
    g1.set_and_print_winner((curr_player + 1) % 2)  
  end    

  #switch to the next player
  curr_player = (curr_player + 1) % 2


end  
puts "Good bye!"



