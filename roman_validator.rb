class RomanValidator
  ILLEGAL_PREFIXES = {
    "i" => [],
    "v" => [],
    "x" => ["v"],
    "l" => ["v", "i"],
    "c" => ["l"],
    "d" => ["l", "x", "v", "i"],
    "m" => ["d", "l", "x", "v", "i"]
  }

  def call(string)
    !contains_illegal_prefixes?(string)
  end

  def contains_illegal_prefixes? (string)
    string.each_char.each_cons(2).any? { |prefix, suffix|
      ILLEGAL_PREFIXES[suffix].include?(prefix)
    }
  end
end
