require_relative './roman_numeral'
require_relative './decimal_roman_translator'

class RomanCalculator
  def initialize()
    @to_decimal = DecimalRomanTranslator.new()
  end

  #TODO: Use something besides eval here
  def call(input_opcode) 
    opcode = prepare(input_opcode)
    result = eval(opcode)
    @to_decimal.call(result)
  end

  def prepare(opcode)
    prepared_input = sterilize(opcode)
    prepared_input = prepared_input.split(" ")
    prepared_input = translate(prepared_input)
  end

  #TODO: This is horrible, fix this
  def translate(tokens)
    result = ""
    tokens.each{ |token| 
      if token.match?(/[a-zA-Z]/)
        result += RomanNumeral.new(token).asInt().to_s
      else 
        result += token
      end
    }
    result
  end

  def sterilize(input_string)
    input_string.downcase
  end
end
