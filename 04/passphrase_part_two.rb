input = File.readlines('puzzle_input.txt')
input_2d = input.each do |line|
  line.split(' ')
end
valid_passphrases = 0

puts input_2d[0][0]
