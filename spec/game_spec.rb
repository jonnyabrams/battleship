require 'game'

describe Game do
  let(:player_1) {double(:player_double)}
  let(:player_2) {double(:player_double)}
  subject(:game) { described_class.new(player_1, player_2) }

  it 'initializes with 2 players' do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end
end