require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game = Game.new( "rock", "scissors")
  end

  def test_return_result
    assert_equal("rock wins", @game.rock_wins)
  end

  def test_rock_beats_scissors
    assert_equal("rock beats scissors, player 1 wins", @game.rock_beats_scissors)
  end



end