require 'computer'
require 'grid'

describe 'The AI' do

  it 'can return the index values for marker placements' do
    grid = Grid.new
    computer = Computer.new(grid, :o)
    computer.place_marker(0)
    computer.place_marker(4)
    computer.place_marker(8)
    expect(computer.find_markers).to eq [0,4,8]
  end

end
