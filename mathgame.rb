@player1_lives = 3
@player2_lives = 3
@current_player = 1
 
def checkLives()
  if @player1_lives > 0 && @player2_lives > 0
    return true
  else 
    return false
  end
end
  

 
def get_answer(operator, x, y) 
  if operator == 1
    operator = " + "
  elsif operator == 2
    operator = " - "
  else 
    operator = " x "
  end
end
  
 
  return gets.chomp("Player " + @current_player + ": What does " + x + operator + y + " equal?") 

 
def switch_player() 
  if @current_player == 1
    @current_player = 2
    puts "You have " + @player1_lives + " lives remaining"
  else 
    @currentPlayer = 1
    puts "You have " + @player2_lives + " lives remaining"
  end
end
  

 
def calculate_answer(op, x, y) 
  if op == 1
    return x + y
    elsif op == 2
    return x - y
    else 
    return x * y
  end
end

 
def announce_winner() 
  if @player1_lives == 0
    puts "Player 2 wins!"
  else 
    puts "Player 1 wins!"
  end
end
  

 
def check_answer(answer, right_answer) 
  if answer == right_answer 
    puts "Correct."
  else 
    if (@current_player == 1) 
      @player1_lives -= 1
      puts "Wrong! " + @player1_lives + " lives left!"
    else 
      @player2Lives -= 1
      puts "Wrong! " + @player2_lives + " lives left!"
    end
  end
end
    
  

 
 loop do
  x  = Math.floor(Math.random() * 20) + 1
  y  = Math.floor(Math.random() * 20) + 1
  op = Math.floor(Math.random() * 3)  + 1
  
  right_answer = calculate_answer(op, x, y)
  answer = get_answer(op, x, y)
 
  check_answer(answer, right_answer)
  switch_player()
  
 break if check_lives() == true 
end
 
announce_winner()