require "minitest/autorun"
require_relative "captcha.rb"

class TestCaptcha < Minitest::Test
  def test_file_exists
    assert Captcha.file?('puzzle_input.txt') == true
  end

  def test_file_is_readable
    assert Captcha.readable?('puzzle_input.txt') == true
  end

  def test_input_is_int
    input = Captcha.read('puzzle_input.txt').to_i
    assert input.is_a?(Integer)
  end
end
