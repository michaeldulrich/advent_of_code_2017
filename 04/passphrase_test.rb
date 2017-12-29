require "minitest/autorun"
# require_relative "passphrase_part_two.rb"


class TestPassphrase < Minitest::Test
  def setup
    @input = File.readlines('puzzle_input.txt').map(&:strip)
    @input_2d = @input.each do |line|
      line.split(" ")
    end
  end

  def test_first_line
    assert_equal @input[0], "vxjtwn vjnxtw sxibvv mmws wjvtxn icawnd rprh"
  end

  def test_first_word
    assert_equal @input_2d[0][0], "vxjtwn"
  end
end
