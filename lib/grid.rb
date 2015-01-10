class Grid

  attr_accessor :cells

  def initialize
    @cells = Array.new(9)
  end

  def place_marker(position, marker)
    cell_valid?(position) ? self.cells[position] = marker : "Invalid cell location - Please try again"
  end

  def cell_valid?(position)
    position.between?(0,8) ? true : false
  end

end
