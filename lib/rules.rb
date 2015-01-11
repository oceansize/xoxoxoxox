module Rules

  def cell_valid?(position)
    position.between?(0,8) ? true : false
  end

  def placement_allowed?(position)
    cells[position] == nil
  end

  def valid_move?(position)
    grid.cell_valid?(position) && grid.placement_allowed?(position)
  end

end
