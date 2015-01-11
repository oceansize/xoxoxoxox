require 'game'

describe 'The game' do

  it 'starts with a grid' do
    game = Game.new
    expect(game.grid.cells.count).to eq 9
  end

end
