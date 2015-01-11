class Game

  attr_accessor :human, :computer, :turn

  def initialize
    @human    = { marker: :x }
    @computer = { marker: :o }
    @turn = human
  end

end
