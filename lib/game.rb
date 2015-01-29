require_relative 'grid'

class Game

  attr_accessor :grid

  WINNING_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

  def place_marker(position)
    valid_move?(position) ? grid.cells[position] = marker : "Invalid cell location - Please try again"
  end

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

  def placement_allowed?(position)
    cells[position].is_a? Integer
  end

  def valid_move?(position)
    grid.cell_valid?(position) && grid.placement_allowed?(position)
  end

end
