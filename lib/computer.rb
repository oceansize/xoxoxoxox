require_relative 'player'

class Computer < Player

  def get_markers
    grid.cells.each_index.select { |index| grid.cells[index] == self.marker }
  end

  def winning_row?(current_layout)
    WINNING_COMBINATIONS.any? { |combo| (current_layout & combo).count == 3 }
  end

  def winning_cell(current_layout)
  end

end
