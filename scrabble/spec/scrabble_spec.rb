require './lib/scrabble'

describe Scrabble do
  context ".score" do
    it "scores a single letter" do
      expect( Scrabble.score("a") ).to eq 1
      expect( Scrabble.score("f") ).to eq(4)
    end

    it "can return back an array of numbers" do
      expect( Scrabble.numbers_array("hello") ).to eql([4,1,1,1,1])
    end

    # before starting this one, ask them to pseudocode
    it "can score a word" do
      expect( Scrabble.score("hello") ).to eq(8)
    end
  end

  # optional, you should explain what .zip does
  context ".score_word" do
    it "can score a word with a multiplier" do
      expect( Scrabble.score_multiplied("hello", [1,2,1,1,1]) ).to eq(9)
    end
  end
end
