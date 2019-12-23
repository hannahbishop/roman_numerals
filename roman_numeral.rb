require_relative "./roman_decimal_translator.rb"

class RomanNumeral
  ILLEGAL_PREFIXES = {
    "i" => [],
    "v" => [],
    "x" => ["v"],
    "l" => ["v", "i"],
    "c" => ["l"],
    "d" => ["l", "x", "v", "i"],
    "m" => ["d", "l", "x", "v", "i"]
  }

  def initialize(string)
    @string = string
    @translator = RomanDecimalTranslator.new()
  end

  def asString()
    @string
  end

  def asInt()
    @translator.call(@string)
  end

  def valid?()
    !contains_illegal_prefixes?()
  end

  private

  def contains_illegal_prefixes?()
    @string.each_char.each_cons(2).any? { |prefix, suffix|
      ILLEGAL_PREFIXES[suffix].include?(prefix)
    }
  end
end
