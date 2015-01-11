require 'player'
require 'grid'

describe 'The player' do

    it 'can place markers on the grid' do
      grid = Grid.new
      human = Player.new(grid, :x)
      human.place_marker(0)
      expect(grid.cells[0]).to eq :x
    end

    it 'will see an error if marker goes out of bounds' do
      grid = Grid.new
      human = Player.new(grid, :x)
      expect(human.place_marker(20)).to eq "Invalid cell location - Please try again"
    end

end
