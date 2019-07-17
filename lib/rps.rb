require('pry')

class RPS
  def initialize(player_move)
    @@computer_move = ""
    @@computer_value = ""
    @@player_move = player_move
  end

  def game_calc
    @@moves = {1=>"SCISSORS",2=>"ROCK",3=>"PAPER"}
    @@player_move = @@player_move.upcase()#This takes the input move and capitolizes
    @@computer_move = rand(1..3)#Gives us a random value
    @@computer_value = @@moves.fetch(@@computer_move)#This changes the value

    if @@player_move == "SCISSORS" && @@computer_value == "ROCK" ||  @@player_move == "ROCK" && @@computer_value == "PAPER" || @@player_move == "PAPER" && @@computer_value == "SCISSORS"
      puts "You threw #{@@player_move.downcase} Computer threw #{@@computer_value.downcase}. You lose!"
    elsif @@player_move == "SCISSORS" && @@computer_value == "PAPER" ||  @@player_move == "ROCK" && @@computer_value == "SCISSORS" || @@player_move == "PAPER" && @@computer_value == "ROCK"
      puts "You threw #{@@player_move.downcase} Computer threw #{@@computer_value.downcase}. You win!"
    elsif @@player_move == @@computer_value
      puts "You threw #{@@player_move.downcase} Computer threw #{@@computer_value.downcase}. It's a tie!"
    else
      puts "Please enter a valid move!"
    end
  end
end

puts "Please choose rock, paper, or scissors."
input = gets.chomp
game = RPS.new(input)
puts game.game_calc
