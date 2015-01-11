require 'player'
require 'grid'

describe 'The player' do

  let(:grid)  { Grid.new }
  let(:human) { Player.new grid, :x }

    it 'is identified by a marker' do
      expect(human.marker).to eq :x
    end

    it 'can place markers on the grid' do
      human.place_marker(0)
      expect(grid.cells[0]).to eq :x
    end

    it 'will see an error if marker goes out of bounds' do
      expect(human.place_marker(20)).to eq "Invalid cell location - Please try again"
    end

    it 'will see an error if cell already contains a marker' do
      human.place_marker(0)
      expect(human.place_marker(0)).to eq "Invalid cell location - Please try again"
    end

end
