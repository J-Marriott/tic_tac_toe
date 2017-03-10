require 'game'
require 'player'

describe Player do
  let(:game) { Game.new }
  let(:player) { described_class.new }


  describe '#allocate' do
    it 'allocates the square to the player whose turn it is' do
      player.allocate(5)
      expect(player.selected).to eq [5]
    end
  end

end
