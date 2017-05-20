## Release 0
# array = [4,13,5,26,189]

# def search_array(array, search_for)
#     i = 0
#     array.each do |item|
#         if item == search_for
#             return i
#             break
#         else
#             i += 1
#         end
#     end
# end

# puts search_array(array,5)


## Release 1
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
