class Player

  attr_accessor :marker, :game

  def initialize(marker=:x, game)
    @marker = marker
    @game   = game
  end

end
