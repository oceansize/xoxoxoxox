require 'player'

describe Player do

  let(:grid)   { double :grid, cells: [1,2,3,4,5,6,7,8,9] }
  let(:game)   { double :game                             }

    it "has a default marker of 'x'" do
      default_player = Player.new game
      expect(default_player.marker).to eq :x
    end

    it "can have it's marker set to 'o' " do
      player = Player.new :o, game
      expect(player.marker).to eq :o
    end

    it "knows which game it belongs to" do
      default_player = Player.new game
      expect(default_player.game).to eq game
    end

end
