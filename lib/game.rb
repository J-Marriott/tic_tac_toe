class Game

  WINNING_COMBOS = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ].freeze

  attr_reader :gameboard
  
  def initialize
    @gameboard = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

end
