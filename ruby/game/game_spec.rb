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

end
