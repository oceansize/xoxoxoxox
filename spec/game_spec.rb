require 'game'

describe 'The game' do

  let(:game)   { Game.new }
  let(:grid)   { double :grid, cells: [1,2,3,4,5,6,7,8,9] }
  let(:player) { double :player                 }
  let(:marker) { double :marker                 }

  def place_computer(*cells)
    cells.each { |cell| computer.place_marker(cell) }
  end

  before(:each) do
    game.grid = grid
  end
  # expect(player).to receive(:new).with(:marker)

  it 'can have a grid of 9 cells' do
    expect(game.grid.cells.count).to eq 9
  end

  it 'can place markers on the grid' do
    game.grid.place_marker(0)
    expect(grid.cells[0]).to eq :x
  end

  xit 'will see an error if marker goes out of bounds' do
    expect(human.place_marker(20)).to eq "Invalid cell location - Please try again"
  end

  xit 'will see an error if cell already contains a marker' do
    human.place_marker(0)
    expect(human.place_marker(0)).to eq "Invalid cell location - Please try again"
  end

  xit 'has a list of all winning combinations' do
    expect(Game::WINNING_COMBINATIONS).to eq [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  end

  xit 'can return the index values for marker placements' do
    place_computer(0,4,8)
    expect(computer.get_markers).to eq [0,4,8]
  end

  xit 'can compare marker placements against winning combinations' do
    place_computer(0,1,2)
    current_layout = computer.get_markers
    expect(computer.winning_row?(current_layout)).to eq true
  end

  xit 'winning row must be same marker' do
    place_computer(0,2)
    person.place_marker(1)
    current_layout = computer.get_markers
    expect(computer.winning_row?(current_layout)).to eq false
  end

  xit 'can identify a winning cell opportunity' do
    place_computer(0,2,6,7)
    current_layout = computer.get_markers
    expect(computer.winning_cell(current_layout)).to eq 1
  end

  xit 'can identify a blocking opportunity' do
    person.place_marker(0)
    person.place_marker(8)
    expect(computer.block_cell).to eq 4
  end

end
