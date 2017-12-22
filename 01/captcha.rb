class Captcha < File
  input = Captcha.read('puzzle_input.txt').to_i
  puts input
end
