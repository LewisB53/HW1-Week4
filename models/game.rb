class Game

  def initialize(hand1,hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def rock_wins
    return "rock wins"
  end

  def rock_beats_scissors
    return "#{@hand1} beats #{@hand2}, player 1 wins"
  end

  def hand1
  end

end