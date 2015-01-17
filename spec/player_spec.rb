require 'player'
require 'grid'

describe 'The player' do

    it "has a default marker of 'x'" do
      player = Player.new
      expect(player.marker).to eq :x
    end

    it "can have it's marker set to 'o' " do
      player = Player.new :o
      expect(player.marker).to eq :o
    end

    it "when marked by an 'o', is toggled to receive AI" do
      player = Player.new :o
      expect(player.ai).to be true
    end

end
