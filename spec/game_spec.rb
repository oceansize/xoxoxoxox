require "game"

describe "The Game" do



  context "Has 2 Players" do

    it "Player 1 is represented by 'X'" do
      game = Game.new
      expect(game.human[:marker]).to eq :x
    end

    it "Player 2 is represented by 'O'" do
      game = Game.new
      expect(game.computer[:marker]).to eq :o
    end

  end

  context "Regulates gameplay" do

    it "Starts with the Human's turn" do
      game = Game.new
      expect(game.turn).to eq game.human
    end
  end

end
