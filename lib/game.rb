require_relative 'player'

class Game
  WIN = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
         [1, 4, 7], [2, 5, 8], [3, 6, 9],
         [1, 5, 9], [3, 5, 7]].freeze

  attr_reader :board, :turn, :player1, :player2

  def initialize(player1: Player.new, player2: Player.new)
    @board = Array (1..9)
    @turn = [1, 2].sample
    @player1 = player1
    @player2 = player2
  end

  def picksquare(n)
    if @board.include? n
      @board.delete(n)
      current_player.allocate(n)
      next_move
    else
      'square taken, pick again'
    end
  end

  def next_move
    if WIN.include? current_player.selected.sort
      current_player_name + ' wins!'
    elsif @board == []
      'It\'s a draw!'
    else
      player_switch
      current_player_name + '\'s turn!'
    end
  end

  private

  def player_switch
    @turn = @turn == 1 ? 2 : 1
  end

  def current_player
    @turn == 1 ? @player1 : @player2
  end

  def current_player_name
    @turn == 1 ? 'Player 1' : 'Player 2'
  end
end
