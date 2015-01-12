module Rules

  WINNING_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

  def cell_valid?(position)
    position.between?(0,8)
  end

  def placement_allowed?(position)
    cells[position].is_a? Integer
  end

  def valid_move?(position)
    grid.cell_valid?(position) && grid.placement_allowed?(position)
  end

end
