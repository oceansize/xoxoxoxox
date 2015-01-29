class Player

  attr_accessor :marker
  attr_reader   :ai

  def initialize(marker=:x)
    @marker = marker
    @ai     = ai_required?
  end

  def ai_required?
    self.marker == :o
  end

end
