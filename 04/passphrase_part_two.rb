# input = File.readlines('puzzle_input.txt')
# input_2d = input.each do |line|
#   line.split(' ')
# end
# valid_passphrases = 0
#
# puts input_2d[0][0]

class PassphraseChecker
  def self.valid?(passphrase)
    seen_words = {}

    passphrase
      .split(' ')
      .each do |w|
        return false if seen_words[w]
        seen_words[w] = true
      end

    true
  end
end
