
class Game
  attr_accessor :status, :turn, :round, :winner
  def initialize
    @status = true    # TRUE when the game is running and FALSE when the game finished
    @turn = 1         # what player should play (1 for player one and 2 for player 2)
    @round = 1        # number of the round of the game
    @winner = false   # FALSE when we dont have a winner yet and a number 1 or 2 for the winner
  end
end
