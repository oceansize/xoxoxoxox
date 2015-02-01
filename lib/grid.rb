class Grid

  attr_reader :cells

  def initialize
    @cells = Array (0..8)
  end

  def cell_valid?(position)
    position.between?(0,8)
  end

  def placement_allowed?(position)
    cells[position].is_a? Integer
  end

  def valid_move?(position)
    cell_valid?(position) && placement_allowed?(position)
  end

end
