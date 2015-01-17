require 'grid'

describe 'The grid' do

  let(:grid) { Grid.new }

  it 'has 9 cells' do
    expect(grid.cells.count).to eq 9
  end

  it 'know when a cell value is invalid' do
    expect(grid.cell_valid?(10)).to be false
  end

end
