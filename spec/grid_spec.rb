require 'grid'

describe Grid do

  let(:grid)   { Grid.new }
  let(:player) { double :player }

  it 'has 9 cells' do
    expect(grid.cells.count).to eq 9
  end

  it 'know when a cell value is out of bounds' do
    expect(grid.cell_valid?(10)).to be false
  end

  it 'knows when a cell is occupied' do
    grid.cells[0] = :x
    expect(grid.placement_allowed?(0)).to be false
  end

end
