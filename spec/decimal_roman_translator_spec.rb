require '../decimal_roman_translator'

describe DecimalRomanTranslator do
  translator = DecimalRomanTranslator.new()
  
  it "can translate a decimal string containing additive terms into a roman string" do
    test_number = 1666
    translation = translator.call(test_number)

    expect(translation).to eq("mdclxvi")
  end

  it "can translate a decimal string containing subtractive terms into a roman string" do
    test_number = 1999
    translation = translator.call(test_number)

    expect(translation).to eq("mcmxcix")
  end

  it "operates on absolute value if it receives a negative term" do
    test_number = -20
    translation = translator.call(test_number)

    expect(translation).to eq("xx")
  end
end
