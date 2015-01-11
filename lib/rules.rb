module Rules

  def cell_valid?(position)
    position.between?(0,8) ? true : false
  end

  def valid_move?(position)
    grid.cell_valid?(position) && grid.cell_empty?(position)
  end

end
