player1_lives = 3
player2_lives = 3
current_player = 1
 
function checkLives()
  if player1_lives > 0 && (player2_lives > 0
    return true
    else 
    return false
  

 
function get_answer(operator, x, y) 
  if operator == 1) 
    operator = " + "
    elsif (operator == 2
    operator = " - "
    else 
    operator = " x "
  
 
  return gets.chomp("Player " + current_player + ": What does " + x + operator + y + " equal?") 

 
function switch_player() 
  if current_player == 1
    current_player = 2
    gets.chomp "You have " + player1_lives + " lives remaining"
    else 
    currentPlayer = 1
    gets.chomp "You have " + player2_lives + " lives remaining"
  

 
function calculate_answer(op, x, y) 
  if op == 1) 
    return x + y
    elsif (op == 2) 
    return x - y
    else 
    return x * y
  

 
function announce_winner() 
  if (player1_lives == 0) 
    gets.chomp "Player 2 wins!"
    else 
    gets.chomp "Player 1 wins!"
  

 
function check_answer(answer, right_answer) 
  if (answer == right_answer) 
    gets.chomp "Correct."
    else 
    if (current_player == 1) 
      player1_lives -= 1
      gets.chomp "Wrong! " + player1_lives + " lives left!"
      else 
      player2Lives -= 1
      gets.chomp "Wrong! " + player2_lives + " lives left!"
    
  

 
do 
 
  x  = Math.floor(Math.random() * 20) + 1
  y  = Math.floor(Math.random() * 20) + 1
  op = Math.floor(Math.random() * 3)  + 1
  
  right_answer = calculate_answer(op, x, y)
  answer = get_answer(op, x, y)
 
  check_answer(answer, right_answer)
  switch_player()
  
 while check_lives() == true 
 
announce_winner()