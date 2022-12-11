require_relative 'grid'

class Player
  def initialize(grid = Grid.new)
    @grid = grid
  end

  def show_grid
    @grid.print_grid
  end
end