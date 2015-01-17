require_relative 'rules'

class Grid

  attr_reader :cells

  def initialize
    @cells = Array (0..8)
  end

  def cell_valid?(position)
    position.between?(0,8)
  end

end
