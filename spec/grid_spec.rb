require 'grid'

describe Grid do

  let(:grid)   { Grid.new                   }
  let(:player) { double :player, marker: :x }

  it 'has 9 cells' do
    expect(grid.cells.count).to eq 9
  end

  it 'know when a cell value is out of bounds' do
    expect(grid.cells.has_key?("Z4")).to be false
  end

  it 'knows when a cell is occupied' do
    grid.cells["A1"] = :x
    expect(grid.placement_allowed?("A1", player)).to be false
  end

end
