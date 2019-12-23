class DecimalRomanTranslator
  DECIMAL = {
    1 => "i",
    4 => "iv",
    5 => "v",
    9 => "ix",
    10 => "x",
    40 => "xl",
    50 => "l",
    90 => "xc",
    100 => "c",
    400 => "cd",
    500 => "d",
    900 => "cm",
    1000 => "m"
  }

  def initialize()
    @definitions = DECIMAL
  end

  def call(number)
    convert(number.abs)
  end

  def convert(number)
    result = ""
    while(number > 0)
      most_significant_digit = most_significant_digit(number)
      next_numeral = @definitions[most_significant_digit]
      number -= most_significant_digit
      result << next_numeral
    end
    result
  end

  def most_significant_digit(number)
    @definitions.keys.select{ |key|
      key <= number  
    }.max
  end
end
