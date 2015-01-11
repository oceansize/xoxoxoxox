require_relative 'rules'

class Grid
  include Rules

  attr_accessor :cells

  def initialize
    @cells = Array.new(9)
  end

  def cell_empty?(position)
    cells[position] == nil
  end

end
