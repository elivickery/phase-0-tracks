def vampire_detector

    puts "How many employees will be processed?"
    number_employees = gets.chomp.to_i

    i = 1
    number_employees.times do
        puts "SURVEY FOR EMPLOYEE NUMBER " + i.to_s

        puts "What is your name?"
        name = gets.chomp

        puts "How old are you?"
        age = gets.chomp.to_i

        puts "What year were you born?"
        birth_year = gets.chomp.to_i

        birth_year_age = 2017 - birth_year

        puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
        garlic = gets.chomp.upcase

        puts "Would you like to enroll in the company’s health insurance? (Y/N)"
        insurance = gets.chomp.upcase

        result = "Results inconclusive."

        if (name == 'Drake Cula' || name == "Tu Fang")
            result = "Definitely a vampire."
        end

        if age == birth_year_age && (garlic == 'Y' || insurance == 'Y')
            result = "Probably not a vampire."
        end

        if age != birth_year_age && (garlic == 'N' || insurance == 'N')
            result = "Probably a vampire."
        end

        if age != birth_year_age && garlic == 'N' && insurance == 'N'
            result = "Almost certainly a vampire."
        end

        puts result

        i += 1
    end
end

print vampire_detector
