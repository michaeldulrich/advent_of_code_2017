input = File.read('puzzle_input.txt').strip.chars.map(&:to_i)
sum = 0

input.each_with_index do |x, i|
  if i < input.length/2
    next_item =  input[i + input.length/2]
  else
    next_item = input[i - input.length/2]
  end

  if x == next_item
    sum += x
  end
end

puts sum
