require 'game'

describe 'The Game' do

  context 'Has 2 Players' do

    it 'Player 1 is represented by "X"' do
      game = Game.new
      expect(game.player_1[:marker]).to eq :x
    end

    it 'Player 2 is represented by "O"' do
      game = Game.new
      expect(game.player_2[:marker]).to eq :o
    end

  end

end
