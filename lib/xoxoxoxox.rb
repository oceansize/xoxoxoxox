class Game

  attr_accessor :board

  def initialize
      @board = Array.new(9)
  end

  def place_marker position
    @board[position] = :x
  end

end
