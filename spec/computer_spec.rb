require 'computer'
require 'grid'

describe 'The Computer' do

  let(:grid    ) { Grid.new              }
  let(:computer) { Computer.new grid, :o }
  let(:person  ) { Player.new grid, :x   }

  def place_computer(*cells)
    cells.each { |cell| computer.place_marker(cell) }
  end

  it 'can return the index values for marker placements' do
    place_computer(0,4,8)
    expect(computer.get_markers).to eq [0,4,8]
  end

  it 'can compare marker placements against winning combinations' do
    place_computer(0,1,2)
    current_layout = computer.get_markers
    expect(computer.winning_row?(current_layout)).to eq true
  end

  it 'winning row must be same marker' do
    place_computer(0,2)
    person.place_marker(1)
    current_layout = computer.get_markers
    expect(computer.winning_row?(current_layout)).to eq false
  end

end
