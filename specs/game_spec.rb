require('minitest/autorun')
require('pry')
require_relative('../models/game.rb')

class TestGame < MiniTest::Test

  def setup
    @game1 = Game.new("rock", "rock")
    @game2 = Game.new("paper", "scissors")
    @game3 = Game.new("scissors", "paper")
  end

  def test_games_a_draw()
    result = @game1.logic
    assert_equal("It's a draw!", result)
  end

  def test_player1_wins()
    result = @game3.logic()
    assert_equal("Player 1 wins with scissors", result)
  end

  def test_player2_wins()
    result = @game2.logic()
    assert_equal("Player 2 wins with scissors", result)
  end

end
