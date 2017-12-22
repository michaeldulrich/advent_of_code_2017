require "minitest/autorun"
require_relative "captcha.rb"

class TestCaptcha < Minitest::Test
  def setup
    @input = Captcha.read('puzzle_input.txt')
    @input_array = @input.split('')
  end

  def test_file_exists
    assert Captcha.file?('puzzle_input.txt') == true
  end

  def test_file_is_readable
    assert Captcha.readable?('puzzle_input.txt') == true
  end

  def test_input_is_string
    assert @input.is_a?(String)
  end

  def test_input_can_split_to_array
    assert @input_array.is_a?(Array)
  end

  def test_string_and_array_are_same_length
    assert @input.length == @input_array.length
  end
end
