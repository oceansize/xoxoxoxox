require 'computer'
require 'grid'

describe 'The AI' do

  let(:grid)     { Grid.new              }
  let(:computer) { Computer.new grid, :o }

  def place_computer(*cells)
    cells.each { |cell| computer.place_marker(cell) }
  end

  it 'can return the index values for marker placements' do
    place_computer 0,4,8
    expect(computer.find_markers).to eq [0,4,8]
  end

end
