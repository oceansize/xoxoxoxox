class Game

  attr_accessor :grid, :player_1, :player_2

  WINNING_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

  def add_grid(grid)
    @grid = grid
  end

  def add_human_player(player_class)
    @player_1 = player_class.new self
  end

  def add_computer_player(ai_class)
    @player_2 = ai_class.new self
  end

  def place_marker(player, position)
    grid.valid_move?(position) ? grid.cells[position] = player.marker : "Invalid cell location - Please try again"
  end

  def get_markers(player)
    grid.cells.each_index.select { |index| grid.cells[index] == player.marker }
  end

  def winning_row?(current_layout)
    WINNING_COMBINATIONS.any? { |combo| (current_layout & combo).count == 3 }
  end

end
