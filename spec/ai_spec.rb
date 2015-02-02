require 'ai'

describe Ai do

  let!(:game)     { Game.new        }
  let!(:grid)     { Grid.new        }
  let!(:player_1) { Player.new game }
  let!(:player_2) { Ai.new game     }

  def place_markers(*cells, grid, player)
    cells.each { |cell| game.place_marker player, cell }
  end

  before(:each) do
    game.add_grid grid
    game.add_computer_player Ai
  end

  it 'can identify a winning cell opportunity' do
    place_markers 3, 5, grid, player_2
    expect(player_2.winning_cell).to eq 4
  end

  it 'can identify a blocking opportunity' do
    place_markers 0, 8, grid, player_1
    expect(player_2.block_cell).to eq 4
  end

end
