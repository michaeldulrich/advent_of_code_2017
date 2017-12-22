class Captcha < File
  input = Captcha.read('puzzle_input.txt').strip.split('')
  sum = 0

  puts input.length


end
