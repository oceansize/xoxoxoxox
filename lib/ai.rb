require_relative 'player'

class Ai < Player

  def initialize(marker=:o, game)
    @marker = marker
    @game   = game
  end

  def winning_cell
    Game::WINNING_COMBINATIONS.each do |combo|
      target_cell = game.grid.cells.values_at(*combo)
      target_cell.delete_if { |cell| cell.is_a? Symbol }
      return target_cell.first if target_cell.count == 1
    end
  end

end
