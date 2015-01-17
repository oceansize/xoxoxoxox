require_relative 'player'

class AI < Player

  # def artificially_intelligent
  #   make me smart
  # end

  def get_markers
    grid.cells.each_index.select { |index| grid.cells[index] == self.marker }
  end

  def winning_row?(current_layout)
    WINNING_COMBINATIONS.any? { |combo| (current_layout & combo).count == 3 }
  end

  def winning_cell(current_layout)
    WINNING_COMBINATIONS.each do |combo|
      target_cell = grid.cells.values_at(*combo)
      target_cell.delete_if { |cell| cell.is_a? Symbol }
      return target_cell.first if target_cell.count == 1
    end
  end

  def block_cell
    4
  end

end
