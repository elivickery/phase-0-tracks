def hamster_info
    puts "What is the hamster's name? "
    hamster_name = gets.chomp

    puts "Hamster volume (1-10): "
    hamster_volume = gets.chomp.to_i

    puts "Fur color: "
    hamster_color = gets.chomp

    puts "Is the hamster a good candidate for adoption (Y/N)? "
    adoption_fitness = gets.chomp
    if adoption_fitness.upcase == 'Y'
        adoption_fitness = true
    else
        adoption_fitness = false
    end

    puts "How old is the hamster?"
    hamster_age = gets.chomp.to_f
    if hamster_age == ''
        hamster_age = nil
    end

end

print hamster_info



