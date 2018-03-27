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
      return "it's a draw"
    elsif
      winning[@player1] == @player2
      return @player1
    else
      return @player2
    end
  end

end
