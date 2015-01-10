require 'xoxoxoxox'

describe 'XOXOXOXOX' do

  it 'has a board with 9 squares' do
    game = Game.new
    expect(game.board.count).to eq 9
  end

  it 'can place a marker on the board' do
    game = Game.new
    game.place_marker(0)
    expect(game.board[0]).to eq :x

  end

end
