# Rock paper scissors game

# Create a class Rps
# initialize method
# method to return random rock paper or scissors
# method to compare what user inputs and randomly chosen sign

class Rps

  attr_reader :opponent_sign, :user_score, :computer_score

  def initialize
    @signs = ["rock", "paper", "scissors"]
    @opponent_sign = nil
    @user_sign = nil
    @user_score = 0
    @computer_score = 0
  end

  def random_sign
    @opponent_sign = @signs.sample
  end

  def compare(user_sign)
    @user_sign = user_sign
    if (@user_sign == "rock" && @opponent_sign == "scissors") ||
      (@user_sign == "paper" && @opponent_sign == "rock") ||
      (@user_sign == "scissors" && @opponent_sign == "paper")
      puts "You win!"
      @user_score += 1
      puts "Your score: #{@user_score} | Computer score: #{@computer_score}"
    elsif (@opponent_sign == "rock" && @user_sign == "scissors") ||
      (@opponent_sign == "paper" && @user_sign == "rock") ||
      (@opponent_sign == "scissors" && @user_sign == "paper")
      puts "You lose!"
      @computer_score += 1
      puts "Your score: #{@user_score} | Computer score: #{@computer_score}"
    elsif (@user_sign == "rock" && @opponent_sign == "rock") ||
      (@user_sign == "paper" && @opponent_sign == "paper") ||
      (@user_sign == "scissors" && @opponent_sign == "scissors")
      puts "You're tied!"
    else
      puts "Try again."
    end
  end
end

# make sure to downcase user input

puts "Ready to play Rock Paper Scissors? Play until someone gets 3 points."
game = Rps.new

until game.user_score === 3 || game.computer_score === 3
  puts "Rock, paper, or scissors?"
  user_sign = gets.chomp.downcase
  game.random_sign
  game.compare(user_sign)
end