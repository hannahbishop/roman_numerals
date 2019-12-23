require_relative '../roman_numeral'

describe RomanNumeral do

  it "can return its value as a roman numerals string" do
    test_string = "mmm"
    result = RomanNumeral.new(test_string)
    expect(result.asString()).to eq("mmm")
  end

  it "can return its value as an integer" do
    test_string = "mmm"
    result = RomanNumeral.new(test_string)
    expect(result.asInt()).to eq(3000)
  end
  
  it "numerals having digits with illegal right neighbors are invalid" do
    test_string = "vl"
    result = RomanNumeral.new(test_string)
    expect(result.valid?).to be(false)
  end

  it "numerals having digits with legal right neighbors are valid" do
    test_string = "mlxi"
    result = RomanNumeral.new(test_string)
    expect(result.valid?).to be(true)
  end
end
