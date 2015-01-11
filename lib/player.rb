class Player

  attr_accessor :grid
  attr_reader   :marker

  def initialize(grid, marker)
    @grid   = grid
    @marker = marker
  end

  def valid_move?(position)
    grid.cell_valid?(position) && cell_empty?(position)
  end

  def cell_empty?(position)
    grid.cells[position] == nil
  end

  def place_marker(position)
    valid_move?(position) ? grid.cells[position] = marker : "Invalid cell location - Please try again"
  end

end
