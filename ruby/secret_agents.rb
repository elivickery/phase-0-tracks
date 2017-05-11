string = "hello"

def encrypt(string)
    index = 0
    while index < string.length
        string[index] = string[index].next
        index += 1
    end
    puts string
end

puts encrypt(string)

def decrypt(string)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    index = 0
    while index < string.length
        previous_in_alphabet = alphabet.index(string[index]) - 1
        previous_letter = alphabet[previous_in_alphabet]
        string[index] = previous_letter
        index += 1
    end
    puts string
end

puts decrypt(string)
