class DecimalSequence
  attr_reader :value

  def initialize(number_list)
    @value = number_list
  end

  def add(digit)
    @value << digit
  end
end
