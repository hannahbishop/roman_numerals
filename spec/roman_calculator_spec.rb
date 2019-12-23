require_relative '../roman_calculator'

describe RomanCalculator do
  calculator = RomanCalculator.new()
  it "can handle terms in upper and lower case" do 
    opcode = "XXV + vii"
    result = calculator.call(opcode)
    expect(result).to eq(32)
  end

  it "can add terms" do 
    opcode = "XXV + xx"
    result = calculator.call(opcode)
    expect(result).to eq(45)
  end

  it "can subtract terms" do 
    opcode = "c - x"
    result = calculator.call(opcode)
    expect(result).to eq(90)
  end

  it "can multiply terms" do 
    opcode = "xvi * ii"
    result = calculator.call(opcode)
    expect(result).to eq(32)
  end

  it "can divide terms" do 
    opcode = "mm / ii"
    result = calculator.call(opcode)
    expect(result).to eq(1000)
  end
end
