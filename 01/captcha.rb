class Captcha < File
  input = Captcha.read('puzzle_input.txt').strip.chars.map(&:to_i)
  sum = 0

  puts input.length


end
