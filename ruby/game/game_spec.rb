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

it "checks if letter is in the word" do
  expect(game.check_if_in_word('p')).to eq true
end

it "adds the letter to the blanks array" do
  game.add_to_blanks_array('p')
  expect(game.blanks_array).to eq ['p']
end

it "checks if the word has been guessed" do
  game.generate_word_array
  game.blanks_array = ['p','o','t','a','t','o']
  expect(game.word_has_been_guessed).to eq true
end

it "prints the blanks array in a readable way" do
  game.generate_word_array
  game.generate_blanks_array
  expect(game.print_blanks_array).to eq '_ _ _ _ _ _'
end

end
