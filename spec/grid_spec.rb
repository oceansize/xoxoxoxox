require 'grid'

describe 'The grid' do

  let(:grid) { Grid.new }

  it 'has 9 cells' do
    expect(grid.cells.count).to eq 9
  end

end
