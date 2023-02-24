require 'game'
require "rspec"

describe Game do 
    subject(:game) {Game.new(5)}
    describe "#initialize" do 
        it  "should take a number arg" do 
            expect(game.size).to be_an(Integer)
        end
        it "should create three piles" do 
            expect(game.pile_1).to be_an(Array)
            expect(game.pile_2).to be_an(Array)
            expect(game.pile_3).to be_an(Array)
        end
        it "should return pile 1" do 
            expect(game.pile_1).to eq([5,4,3,2,1])

        end
    end

    describe "#move" do
        it "should move an item to a new pile" do
            pile_1 = game.pile_1
            pile_2 = game.pile_2
            pile_3 = game.pile_3
            expect(game.move(pile_1, pile_3)).to eq([1])
            expect(game.pile_3).to eq([1])
            expect(game.pile_1).to eq([5,4,3,2])
            expect(game.move(pile_1, pile_2)). to eq([2])
        end
        it "should raise an error" do 
            pile_1 = game.pile_1
            pile_2 = game.pile_2
            pile_3 = game.pile_3
            game.move(pile_1, pile_3)
            game.move(pile_1, pile_2)
            expect{game.move(pile_2, pile_3)}.to raise_error("Invalid Move")
        end
    end
    describe "#won?" do 
        it "should return true if the game is ended and the player won" do 
            expect(game.won?).to be(false)
            game.pile_1 = []
            game.pile_2 = []
            game.pile_3 = [5,4,3,2,1]
            expect(game.won?).to be(true)
        end
    end

end