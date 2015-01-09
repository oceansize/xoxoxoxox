require 'xoxoxoxox'

describe 'XOXOXOXOX' do

  it 'has a board with 9 squares' do
      game = Game.new
      expect(game.board.count).to eq 9
  end

end
