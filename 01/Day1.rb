puts "Enter your number:"
print ">>"
number = gets.chomp

number_array = number.split('')

sum = 0

numberArray.each_with_index do |x, i|
    x = x.to_i
    next_item = numberArray[i+1].to_i
    if x == next_item
        sum = x + sum
    end
end

if numberArray.last == numberArray.first
    sum = numberArray.last.to_i + sum
end

puts sum

# while index !numberArray.last
#     if index <=> index += 1

#     end
# end
