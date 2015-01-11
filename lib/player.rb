class Player

  attr_accessor :grid
  attr_reader   :marker

  def initialize(grid, marker)
    @grid   = grid
    @marker = marker
  end

  def place_marker(position)
    grid.cell_valid?(position) ? grid.cells[position] = marker : "Invalid cell location - Please try again"
  end

end
