# our game should ...
# generate array from word
# create an array of blanks
# check if guessed letter is in the word
# add letter to blanks array
# check whether word has been guessed
# print the array in a readable way

require_relative 'game'

describe Game do
  let(:game) { Game.new('potato') }

it "generates an array from the word" do
  game.generate_word_array
  expect(game.word).to eq ['p','o','t','a','t','o']
end

it "generates an array of blanks" do
  game.generate_blanks_array
  expect(game.blanks_array).to eq ['_','_','_','_','_','_']
end

end
