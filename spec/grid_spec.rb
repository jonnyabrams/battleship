require 'grid'

describe Grid do
  # let(:printer) {double(:printer_double)}
  # subject(:ranker) { described_class.new(printer) }

  # before(:each) do
  #   allow(printer).to receive(:ranked_hands).and_return([])
  #   allow(printer).to receive(:numbers).and_return([])
  # end

  subject(:grid) { described_class.new }

  it 'is a 10x10 row of hyphens' do
    expect(grid.print_grid).to eq [
      ["0", "1", "2", "3", "4", "5"],
      ["A", "-", "-", "-", "-", "-"],
      ["B", "-", "-", "-", "-", "-"],
      ["C", "-", "-", "-", "-", "-"],
      ["D", "-", "-", "-", "-", "-"],
      ["E", "-", "-", "-", "-", "-"]
    ]
  end
end