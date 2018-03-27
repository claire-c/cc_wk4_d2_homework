require('pry')

class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def logic()
    winning = { "paper" => "rock", "rock" => "scissors", "scissors" => "paper" }
    if @player1 == @player2
      return "It's a draw!"
    elsif
      winning[@player1] == @player2
      return "Player 1 wins with #{@player1}"
    else
      return "Player 2 wins with #{@player2}"
    end
  end

end
