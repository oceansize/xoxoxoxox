require 'game'
require 'grid'
require 'player'
require 'ai'

describe Game do

  let(:game)     { Game.new        }
  let(:player_1) { Player.new game }
  let(:player_2) { Ai.new game     }
  let(:grid)     { Grid.new        }

  def place_markers(*cells, grid, player)
    grid.cells.each_key { |cells| puts cells }
    grid.cells.each { |cell| game.place_marker player, cell }
  end

  before(:each) do
    game.add_grid(grid)
  end

  context 'setup' do

    it 'has a grid' do
      game.add_grid grid
      expect(game.grid.cells["B2"]).to eq :~
    end

    it 'has a human player' do
      game.add_human_player(Player)
      expect(game.player_1.marker).to eq :x
    end

    it 'has a computer player' do
      game.add_computer_player(Ai)
      expect(game.player_2.marker).to eq :o
    end

  end

  context 'placing markers' do

    it 'can place markers on the grid' do
      game.place_marker(player_1, "A1")
      expect(grid.cells["A1"]).to eq :x
    end

    it 'will see an error if marker goes out of bounds' do
      expect(game.place_marker(player_1, "Z5")).to eq "Invalid cell location - Please try again"
    end

    it 'will see an error if cell already contains a marker' do
      game.place_marker(player_1, "A1")
      expect(game.place_marker(player_2, "A1")).to eq "Invalid cell location - Please try again"
    end

  end

  context 'knows how to' do

    it 'return the index values for marker locations' do
      place_markers("A1","B2","C3", player_1)
      expect(game.get_markers(player_1)).to eq ["A1","B2","C3"]
    end

    it 'reference a list of all winning combinations' do
      expect(Game::WINNING_COMBINATIONS).to eq [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    end

    it 'identify a winning row' do
      current_layout = [:x,:x,:x,4,5,6,7,8,9]
      expect(game.winning_row?(current_layout)).to eq true
    end

    it 'check the winning row is the same marker' do
      current_layout = game.get_markers(player_1)
      expect(game.winning_row?(current_layout)).to eq false
    end
  end

end
