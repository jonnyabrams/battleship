require 'game'

describe Game do
  let(:player_1) {double(:player_double)}
  let(:player_2) {double(:player_double)}
  subject(:game) { described_class.new(player_1, player_2) }

  grid = [
    ["0", "1", "2", "3", "4", "5"],
    ["A", "-", "-", "-", "-", "-"],
    ["B", "-", "-", "-", "-", "-"],
    ["C", "-", "-", "-", "-", "-"],
    ["D", "-", "-", "-", "-", "-"],
    ["E", "-", "-", "-", "-", "-"]
  ]

  before(:each) do
    allow(player_1).to receive(:grid).and_return(grid)
    allow(player_2).to receive(:grid).and_return(grid)
  end

  it 'initializes with 2 players' do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  describe 'place_ships' do
    it 'asks you to place 5 ships on your grid' do
      expect { game.place_ships }.to output("Place your 5 ship coordinates (separated by commas)\n").to_stdout
    end

    it 'returns your chosen ship placements marked on your grid' do
      allow(game).to receive(:gets).and_return("1a,2b,3c,4d,5e\n")
      expect(game.place_ships).to eq [
        ["0", "1", "2", "3", "4", "5"],
        ["A", "O", "-", "-", "-", "-"],
        ["B", "-", "O", "-", "-", "-"],
        ["C", "-", "-", "O", "-", "-"],
        ["D", "-", "-", "-", "O", "-"],
        ["E", "-", "-", "-", "-", "O"]
      ]
    end
  end

  describe 'get_letter_value' do
    it 'get the letter value from a placement' do
      expect(game.get_letter_value("1a")).to eq "a"
    end
  end

  describe 'get_number_value' do
    it 'get the number value from a placement' do
      expect(game.get_number_value("1a")).to eq 1
    end
  end

  describe 'calculate_row_letter' do
    it 'returns a number for a letter input to help determine which row to put the marking in' do
      expect(game.calculate_row_letter("1a")).to eq 1
      expect(game.calculate_row_letter("3b")).to eq 2
      expect(game.calculate_row_letter("2c")).to eq 3
      expect(game.calculate_row_letter("4d")).to eq 4
      expect(game.calculate_row_letter("5e")).to eq 5
      expect{game.calculate_row_letter("1f")}.to raise_error("Invalid input")
    end
  end

  describe 'mark_grid' do
    it 'marks the grid with your ship placements' do
      expect(game.mark_grid(["1a", "2b", "3c", "4d", "5e"], player_1)).to eq [
          ["0", "1", "2", "3", "4", "5"],
          ["A", "O", "-", "-", "-", "-"],
          ["B", "-", "O", "-", "-", "-"],
          ["C", "-", "-", "O", "-", "-"],
          ["D", "-", "-", "-", "O", "-"],
          ["E", "-", "-", "-", "-", "O"]
        ]
    end
  end
end