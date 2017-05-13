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

    puts "The hamster's name is " + hamster_name
    puts "The hamster's volume is " + hamster_volume.to_s
    puts "The hamster's color is " + hamster_color
    if adoption_fitness == true
        puts "The hamster is a good fit for adoption"
    else
        puts "The hamster is not a good fit for adoption"
    end

    if hamster_age != nil
        puts "The hamster's age is " + hamster_age.to_s
    end

end

print hamster_info



