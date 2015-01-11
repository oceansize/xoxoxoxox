class Grid

  attr_accessor :cells

  def initialize
    @cells = Array.new(9)
  end

  def cell_valid?(position)
    position.between?(0,8) ? true : false
  end

end
