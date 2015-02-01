require 'ai'

describe Ai do

  let!(:game)     { Game.new }
  let!(:grid)     { Grid.new }
  let!(:player_2) { Ai.new game  }

  def place_computer(*cells)
    cells.each { |cell| game.place_marker player_2, cell }
  end

  before(:each) do
    game.add_grid grid
    game.add_computer_player Ai
  end

  it 'can identify a winning cell opportunity' do
    place_computer 3, 5
    expect(game.player_2.winning_cell).to eq 4
  end

  xit 'can identify a blocking opportunity' do
    person.place_marker(0)
    person.place_marker(8)
    expect(computer.block_cell).to eq 4
  end

end
