class DecimalSequence
  attr_reader :value

  def initialize(number_list = [])
    @value = number_list
  end

  def add(digit)
    @value << digit
  end

  def aggregate()
    result = @value.first
    @value.each_cons(2) { |pair|
      if pair[1] < pair[0]
        result -= pair[1]
      else
        result += pair[1]
      end
    }
    result
  end
end
