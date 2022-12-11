require 'game'

describe Game do
  let(:player_1) {double(:player_double)}
  let(:player_2) {double(:player_double)}
  subject(:game) { described_class.new(player_1, player_2) }

  it 'initializes with 2 players' do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  describe 'place_ships' do
    it 'asks you to place 5 ships on your grid' do
      expect { game.place_ships }.to output("Place your 1st ship\n").to_stdout
    end
  end
end