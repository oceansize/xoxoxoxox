module Rules

  def cell_valid?(position)
    position.between?(0,8) ? true : false
  end

end
