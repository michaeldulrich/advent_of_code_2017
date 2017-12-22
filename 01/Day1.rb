puts "Enter your number:"
print ">>"
number = gets.chomp

number_array = number.split('')

sum = 0

number_array.each_with_index do |x, i|
    x = x.to_i
    next_item = number_array[i+1].to_i
    if x == next_item
        sum = x + sum
    end
end

if number_array.last == number_array.first
    sum = number_array.last.to_i + sum
end

puts sum

# while index !numberArray.last
#     if index <=> index += 1

#     end
# end
