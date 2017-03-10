class Game

  WIN = [[1, 2, 3],[4, 5, 6],[7, 8, 9],
         [1, 4, 7],[2, 5, 8],[3, 6, 9],
         [1, 5, 9],[3, 5, 7]].freeze

  PLAYERS = [1, 2].freeze

  attr_reader :board, :turn, :player1, :player2

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @turn = PLAYERS.sample
    @player1 = []
    @player2 = []
  end

  def picksquare(n)
    if @board.include? n
      @board.delete(n)
      add_to_player(n)
      player_switch
      check_outcome
    else
      'square taken, pick again'
    end
  end

  def add_to_player(n)
    @turn == 1 ? @player1 << n : @player2 << n
  end

  def player_switch
    @turn == 1 ? @turn = 2 : @turn = 1
  end

  def check_outcome
    if WIN.include? last_play_board.sort
      last_player + ' wins!'
    elsif @board == []
      'It\'s a draw!'
    else
      'Player ' + @turn.to_s + '\'s turn!'
    end
  end

  def last_player
    @turn == 1 ? 'Player 2' : 'Player 1'
  end

  def last_play_board
    @turn == 1 ? @player2 : @player1
  end

end
