
class Password
  SPECIAL_CHARS = ['\\', '[', ']', '^', '_', '`'].freeze
  def initialize(min_length, no_of_spec_chars, no_of_numbers)
    @min_length = min_length
    @no_of_spec_chars = no_of_spec_chars
    @no_of_numbers = no_of_numbers
  end

  def generate
    password = generate_special_characters + generate_numbers
    password = password + generate_characters(@min_length - password.length) if password.length < @min_length
    password.split('').shuffle.join('')
  end

  private

  def generate_characters(count)
    word = ''
    count.times do
      word = word + (('A'..'z').to_a - SPECIAL_CHARS).sample
    end
    word
  end

  def generate_special_characters
    word = ''
    @no_of_spec_chars.times do
      word = word + (('!'..'?').to_a - (0..9).to_a + SPECIAL_CHARS - ['\\']).sample
    end
    word
  end

  def generate_numbers
    number = ''
    @no_of_numbers.times do
      number = number + (0..9).to_a.sample.to_s
    end
    number
  end

end
