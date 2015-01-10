require 'grid'

describe 'The grid' do

  let(:grid) { Grid.new }

  it 'has 9 cells' do
    expect(grid.cells.count).to eq 9
  end

  it 'can place a marker on the board' do
    grid.place_marker(0, :x)
    expect(grid.cells[0]).to eq :x
  end

  it 'will raise an error if marker goes out of bounds' do
    expect(grid.place_marker(20, :x)).to eq "Invalid cell location - Please try again"
  end

end
