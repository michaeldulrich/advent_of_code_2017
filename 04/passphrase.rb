input = File.readlines('puzzle_input.txt')
valid_passphrases = 0

input.each do |line|
  word = line.split(' ')
  if word.uniq == word
    valid_passphrases += 1
  end
# end
end

puts valid_passphrases
