# Release 0
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


# Release 1
def fib(number_items)
    i = 0
    fib_array = [0,1]
    first = fib_array[0]
    second = fib_array[1]

    while i < number_items - 2
        item = first + second
        fib_array.push(item)
        first = second
        second = item
        i += 1
    end

    return fib_array
end

puts fib(100)

## Release 2 - Bubble Sort
# Define a method that takes an array
def bubble_sort(array)
# Create a variable equal to the array length
n = array.length
    loop do
    # Perform a loop:
        # Create a variable 'swapped' that is equal to false; we will set it to true after the pair of values has been swapped.
        swapped = false
        #  For each item in the array,
        (n-1).times do |i|
        #  If the item is greater than the item whose index is one larger than it,
            if array[i] > array[i+1]
                # Switch the indexes of the two items,
                array[i], array[i+1] = array[i+1], array[i]
                # and set swapped equal to true.
                swapped = true
            end
        end

        break if not swapped
    end

    # Return the array.
    array
end

sample_array = [5,3,10,16,12,100,2]
puts bubble_sort(sample_array)























