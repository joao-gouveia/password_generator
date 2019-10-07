require 'minitest/autorun'
require_relative 'password_generator'

class PasswordGeneratorTest < Minitest::Test
  def setup
    @default_byte_length = 15
  end

  def test_no_argument
    # Since the byte_length is 15 by default, SecureRandom will generate a
    # sequence of 15 bytes,  returning a string of length roughly 4n/3.
    password = PasswordGenerator.generate_password
    str_lenght = @default_byte_length * 4 / 3
    assert_equal str_lenght, password.length
  end

  def test_with_integer_argument
    byte_length = 3
    password = PasswordGenerator.generate_password(byte_length)
    str_lenght = byte_length * 4 / 3
    assert_equal str_lenght, password.length
  end

  def test_with_wrong_argument_type
    assert_raises SystemExit do
      PasswordGenerator.generate_password('a_string')
    end
  end
end
