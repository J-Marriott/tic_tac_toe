require 'game'

describe Game do

  let(:game){described_class.new}
  
  it "initializes with a new gameboard" do
    expect(game.gameboard).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end
