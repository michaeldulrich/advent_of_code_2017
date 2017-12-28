input = File.read("puzzle_input.txt")
sum = 0

input.each_line do |line|
  new_array = line.split("\t").map(&:to_i)
  new_array.permutation(2) do |a, b|
    if a % b == 0
      value = a / b
      sum += value
    end
  end
end

puts sum
