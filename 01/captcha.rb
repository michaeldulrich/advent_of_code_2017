input = File.read('puzzle_input.txt').strip.chars.map(&:to_i)
sum = 0

input.each_with_index do |x, i|
  next_item = input[i+1]
  if x == next_item
    sum += x
  end
end

if input.first == input.last
  sum += input.first
end

puts sum
