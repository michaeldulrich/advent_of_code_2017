require "minitest/autorun"
require_relative "passphrase_part_two.rb"


class TestPassphrase < Minitest::Test
  # def setup
  #   @input = File.readlines('puzzle_input.txt').map(&:strip)
  # end
  #
  # def test_first_line
  #   assert_equal @input[0], "vxjtwn vjnxtw sxibvv mmws wjvtxn icawnd rprh"
  # end
  def test_valid_passphrase
    assert PassphraseChecker.valid?('aa bb cc dd ee')
  end

  def test_invalid_passphrase_with_repeated_word
    refute PassphraseChecker.valid?('aa bb cc dd aa')
  end

  def test_valid_passphrase_with_similar_words
    assert PassphraseChecker.valid?('aa bb cc dd aaa')
  end

end
