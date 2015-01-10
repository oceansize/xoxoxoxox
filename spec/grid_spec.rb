require 'grid'

describe 'The grid' do

  it 'has 9 cells' do
    grid = Grid.new
    expect(grid.cells.count).to eq 9
  end

  it 'can place a marker on the board' do
    grid = Grid.new
    grid.place_marker(0, :x)
    expect(grid.cells[0]).to eq :x
  end

end
