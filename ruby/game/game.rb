## Game class
# our game should ...
# generate array from word
# create an array of blanks
# check if guessed letter is in the word
# add letter to guessed array
# check if letter has been guessed
# add letter to blanks array
# check whether word has been guessed
# print the array in a readable way

class Game
    attr_reader :success_message, :fail_message
    attr_accessor :word, :blanks_array, :guesses_available, :guessed_array, :letter_locations

    def initialize(word)
        @word = word
        @blanks_array = []
        @guessed_array = []
        @letter_locations = []
        @guesses_available = @word.length
        @success_message = "You guessed the word!"
        @fail_message = "Sorry, you lose."
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
        @word.each do |item|
            @letter_locations = []
            if item == letter
                @letter_locations = @word.each_index.select{|i| @word[i] == letter }
                @letter_locations.each do |location|
                    @blanks_array[location] = letter
                end
                true
            else
                false
            end
        end
    end

# Method: add letter to blanks array
    def add_to_blanks_array(letter)
        @blanks_array[@word.index(letter)] = letter
    end

# Method: add letter to guessed array
    def add_letter_to_guessed_array(letter)
            @guessed_array << letter
    end

# Method: check if word has been guessed
    def word_has_been_guessed
        if @word == @blanks_array
            true
        else
            false
        end
    end

# Method: check if letter has been guessed
    def letter_has_been_guessed(letter)
        if @guessed_array.include? letter
            result = true
        else
            result = false
        end
    end

# Method: print blanks array in a readable way
    def print_blanks_array
        @blanks_array.join(' ')
    end

end


## User Interface

puts "Welcome, USER1! Enter a word:"

game = Game.new(gets.chomp)

game.generate_word_array

game.generate_blanks_array

puts "USER2: Let's guess the word."

loop do
    if game.guesses_available > 0

        puts game.print_blanks_array

        puts "Guess a letter:"

        letter = gets.chomp

        if !game.letter_has_been_guessed(letter)
            game.add_letter_to_guessed_array(letter)
            game.guesses_available -= 1
        else
            puts "You guessed that letter already."
        end

        game.check_if_in_word(letter)

        if game.word_has_been_guessed
            puts game.success_message
            break
        else
            puts "You have #{game.guesses_available} guesses left."
        end
    else
        puts game.fail_message
        break
    end

end
