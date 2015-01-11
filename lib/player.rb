class Player
  include Rules

  attr_accessor :grid
  attr_reader   :marker

  def initialize(grid, marker)
    @grid   = grid
    @marker = marker
  end

  def place_marker(position)
    valid_move?(position) ? grid.cells[position] = marker : "Invalid cell location - Please try again"
  end

end
