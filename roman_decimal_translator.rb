require_relative './decimal_sequence'

class RomanDecimalTranslator
  ROMAN = {
    "i" => 1,
    "v" => 5,
    "x" => 10,
    "l" => 50,
    "c" => 100,
    "d" => 500,
    "m" => 1000
  } 

  def initialize()
    @definitions = ROMAN
  end

  def call(string)
    string.downcase
    decimal_conversion = DecimalSequence.new()
    string.each_char { |c|
      decimal_conversion.add(@definitions[c])
    }
    decimal_conversion
  end
end
