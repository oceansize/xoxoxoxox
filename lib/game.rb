require_relative 'grid'

class Game

  attr_reader :grid

  def initialize
    @grid = Grid.new
  end

end
