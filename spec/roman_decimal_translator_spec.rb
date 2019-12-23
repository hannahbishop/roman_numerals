require '../roman_decimal_translator'

describe RomanDecimalTranslator do
  translator = RomanDecimalTranslator.new()
  
  it "translates i to 1" do
    test_string = "I"
    translation = translator.call(test_string)

    expect(translation).to eq(1)
  end

  it "translates v to 5" do
    test_string = "V"
    translation = translator.call(test_string)

    expect(translation).to eq(5)
  end

  it "translates x to 10" do
    test_string = "x"
    translation = translator.call(test_string)

    expect(translation).to eq(10)
  end

  it "translates l to 50" do
    test_string = "L"
    translation = translator.call(test_string)

    expect(translation).to eq(50)
  end

  it "translates c to 100" do
    test_string = "C"
    translation = translator.call(test_string)

    expect(translation).to eq(100)
  end

  it "translates d to 500" do
    test_string = "D"
    translation = translator.call(test_string)

    expect(translation).to eq(500)
  end

  it "translates m to 1000" do
    test_string = "m"
    translation = translator.call(test_string)

    expect(translation).to eq(1000)
  end

  it "translates multi-character numerals" do
    test_string = "mdcclxxvii"
    translation = translator.call(test_string)

    expect(translation).to eq(1777)
  end

  it "translates multi-character numerals with subtraction terms" do
    test_string = "MCDXCIV"
    translation = translator.call(test_string)

    expect(translation).to eq(1494)
  end
end
