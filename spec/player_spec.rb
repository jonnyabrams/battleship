require 'player'

describe Player do
  subject(:player) { described_class.new }
  let(:grid) {double(:grid_double)}

  it 'initializes with a grid' do
    expect(player.show_grid).to eq [
      ["0", "1", "2", "3", "4", "5"],
      ["A", "-", "-", "-", "-", "-"],
      ["B", "-", "-", "-", "-", "-"],
      ["C", "-", "-", "-", "-", "-"],
      ["D", "-", "-", "-", "-", "-"],
      ["E", "-", "-", "-", "-", "-"]
    ]
  end
end