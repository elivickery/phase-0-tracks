def encrypt(string)
    index = 0
    while index < string.length
        string[index] = string[index].next
        index += 1
    end
    return string
end

def decrypt(string)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    index = 0
    while index < string.length
        previous_in_alphabet = alphabet.index(string[index]) - 1
        previous_letter = alphabet[previous_in_alphabet]
        string[index] = previous_letter
        index += 1
    end
    return string
end

# puts decrypt(encrypt("swordfish"))

puts "Do you want to encrypt or decrypt?"

user_choice = gets.chomp

puts "What's your password?"

password = gets.chomp

if user_choice == "encrypt"

    puts encrypt(password)

elsif user_choice == "decrypt"

    puts decrypt(password)

else

    puts "Invalid choice"

end
