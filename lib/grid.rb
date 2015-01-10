class Grid

  attr_accessor :cells

  def initialize
      @cells = Array.new(9)
  end

  def place_marker position, marker
    self.cells[position] = marker
  end

end
