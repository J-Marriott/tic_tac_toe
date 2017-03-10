require 'game'

describe Game do

  let(:game){described_class.new}

  describe '#initialize' do
    it 'initializes with a new gameboard' do
      expect(game.board).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
    it 'initializes with 2 players' do
      expect(game.player1).to eq []
      expect(game.player2).to eq []
    end
    it 'the first turn can be player1 or player2' do
      expect([1, 2]).to include(game.turn)

    end
  end

  describe '#picksquare' do
    it 'deletes the value from board array if unselected' do
      game.picksquare(5)
      expect(game.board).to eq [1, 2, 3, 4, 6, 7, 8, 9]
    end
    it 'gives message if the value from board has already been selected' do
      game.picksquare(5)
      expect(game.picksquare(5)).to eq 'square taken, pick again'
    end
  end

  describe '#add_to_player' do
    it 'allocates the square to the player whose turn it is' do
      game.instance_variable_set(:@turn, 1)
      game.picksquare(5)
      expect(game.player1).to eq [5]
    end
  end

end
