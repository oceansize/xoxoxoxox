require_relative 'rules'

class Grid
  include Rules

  attr_accessor :cells

  def initialize
    @cells = Array (0..8)
  end

end
