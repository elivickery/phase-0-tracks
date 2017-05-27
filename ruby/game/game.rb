## Game class
# our game should ...
# generate array from word
# create an array of blanks
# check if guessed letter is in the word
# add letter to blanks array
# check whether word has been guessed
# print the array in a readable way

class Game

    attr_accessor :word, :blanks_array

    def initialize(word)
        @word = word
        @blanks_array = []
    end

# Method: generate array from word
    def generate_word_array
        @word = @word.chars
    end

# Method: generate an array of blanks
    def generate_blanks_array
        @word.length.times do
            @blanks_array << '_'
        end
    end

# Method: check if guessed letter is in the word
    def check_if_in_word(letter)
        @word.include? letter
    end

# Method: add letter to blanks array
    def add_to_blanks_array(letter)
        @blanks_array[@word.index(letter)] = letter
    end

# Method: check if word has been guessed
    def word_has_been_guessed
        if @word == @blanks_array
            true
        else
            false
        end
    end

# Method: print blanks array in a readable way
    def print_blanks_array
        @blanks_array.join(' ')
    end

end

