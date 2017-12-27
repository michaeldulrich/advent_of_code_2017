class Captcha < File
  input = Captcha.read('puzzle_input.txt').strip.chars.map(&:to_i)
  sum = 0

  input.each_with_index do |x, i|
    next_item = input.[i + input.length/2]
    if x == next_item
      sum += x
    end
  end

  puts sum

end
