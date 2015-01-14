require_relative 'grid'

class Game

  attr_reader :grid

  def initialize(board_class)
    @grid = board_class.new
  end

end
