require './answers'
require './questions'
require './state'
require './players'
require 'pry'


#Create Players
Player1 = MathGame::Player.new('Player1')
Player2 = MathGame::Player.new('Player2')
State = MathGame::State.new
Answer = MathGame::Answers.new
Question = MathGame::Questions.new

puts "---------------------------------------"
puts "------- Welcome to the MathGame -------"
while ((Player1.lives > 0) && (Player2.lives > 0))
  Question.genQuestion
  puts "#{State.activePlayer}: What does #{Question.number1} plus #{Question.number2} equal ?"
  print "> "
  userInput = gets.chomp.to_i
  Answer.userAnswer = userInput


  if(Answer.userAnswer == Question.answer)
    puts "#{State.activePlayer}: You got it right!"

  else
    if(State.activePlayer == 'Player1')
      Player1.lifeSnatch
    else
      Player2.lifeSnatch
    end
    puts "#{State.activePlayer}: You got it wrong..your life is snatched!"
    puts "P1: #{Player1.lives}/3 vs P2: #{Player2.lives}/3"
  end
  puts "------- NEW TURN -------"
  State.switchPlayer
end

if(Player1.lives > 0)
  puts("Player 1 wins with a score of #{Player1.lives}/3")
else
  puts("Player 2 wins with a score of #{Player2.lives}/3")
end

puts("------- GAME OVER -------")
puts("Good bye!")