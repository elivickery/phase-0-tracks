array = [4,13,5,26,189]

def search_array(array, search_for)
    i = 0
    array.each do |item|
        if item == search_for
            return i
            break
        else
            i += 1
        end
    end
end

puts search_array(array,5)
