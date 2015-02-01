class Grid

  attr_reader :cells

  def initialize
    @cells = {
      "A1" => :~, "A2" => :~, "A3" => :~,
      "B1" => :~, "B2" => :~, "B3" => :~,
      "C1" => :~, "C2" => :~, "C3" => :~,
    }
  end

  def cell_empty?(position)
    self.cells[position] == :~
  end

  def valid_move?(position)
    cell_empty?(position) && self.cells.has_key?(position)
  end

end
