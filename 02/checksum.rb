input = File.read("puzzle_input.txt")
sum = 0

input.each_line do |line|
  new_array = line.split("\t").map(&:to_i)
  line_diff = new_array.max - new_array.min
  sum += line_diff
end

puts sum
