require_relative 'player'

class Computer < Player

  def find_markers
    grid.cells.each_index.select { |index| grid.cells[index] == :o }
  end

end
