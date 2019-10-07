require 'clipboard'
require 'securerandom'

class PasswordGenerator
  def self.generate_password(byte_length)
    verify_argument_type(arg: byte_length)
    password = SecureRandom.base64(byte_length.to_i)
    puts password
    Clipboard.copy password
  end

  def self.verify_argument_type(arg:)
    return if (arg.is_a? Integer) || arg.match(/[0-9]+/)

    puts 'Incorrect argument type'
    abort
  end
end

PasswordGenerator.generate_password(ARGV[0] ||= 15)
