require 'game'

describe Game do

  let(:game)     { Game.new                                  }
  let(:grid)     { double :grid, cells: [1,2,3,4,5,6,7,8,9]  }
  let(:player_1) { double :player_1, marker: :x, game: :game }
  let(:player_2) { double :player_2, marker: :o, game: :game }

  before(:each) do
    game.add_grid(grid)
  end

  context 'setup' do

    it 'has a grid' do
      expect(game.grid.cells.count).to eq 9
    end

    it 'has a human player' do
      game.add_human_player(Player)
      expect(!game.player_1).to be false
    end

    it 'has a computer player' do
      game.add_computer_player(Ai)
      expect(!game.player_2).to be false
    end

  end

  context 'placing markers' do

    it 'can place markers on the grid' do
      allow(game.grid).to receive(:valid_move?).and_return(true)
      game.place_marker(player_1, 0)
      expect(grid.cells[0]).to eq :x
    end

    it 'will see an error if marker goes out of bounds' do
      allow(game.grid).to receive(:valid_move?).and_return(false)
      expect(game.place_marker(player_1, 20)).to eq "Invalid cell location - Please try again"
    end

    it 'will see an error if cell already contains a marker' do
      allow(game.grid).to receive(:valid_move?).and_return(false)
      expect(game.place_marker(player_2, 0)).to eq "Invalid cell location - Please try again"
    end

  end

  context 'knows how to' do

    it 'return the index values for marker locations' do
      allow(game.grid).to receive(:cells).and_return([:x,2,3,4,:x,6,7,8,:x])
      expect(game.get_markers(player_1)).to eq [0,4,8]
    end

    it 'reference a list of all winning combinations' do
      expect(Game::WINNING_COMBINATIONS).to eq [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    end

    it 'identify a winning row' do
      current_layout = [:x,:x,:x,4,5,6,7,8,9]
      expect(game.winning_row?(current_layout)).to eq true
    end

    it 'check the winning row is the same marker' do
      allow(game.grid).to receive(:cells).and_return([:x,:x,:o,4,5,6,7,8,9])
      current_layout = game.get_markers(player_1)
      expect(game.winning_row?(current_layout)).to eq false
    end
  end

end
