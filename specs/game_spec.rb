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
    assert_equal("draw", result)
  end

  def test_player1_wins()
    result = @game3.logic()
    assert_equal("scissors", result)
  end

  def test_player2_wins()
    result = @game2.logic()
    assert_equal("scissors", result)
  end


end
