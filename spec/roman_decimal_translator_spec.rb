require '../roman_decimal_translator'

describe RomanDecimalTranslator do
  translator = RomanDecimalTranslator.new()
  
  it "translates i to 1" do
    test_string = "ii"
    translation = translator.call(test_string)

    expect(translation.value).to eq([1, 1])
  end

  it "translates v to 5" do
    test_string = "vi"
    translation = translator.call(test_string)

    expect(translation.value).to eq([5, 1])
  end

  it "translates x to 10" do
    test_string = "xxv"
    translation = translator.call(test_string)

    expect(translation.value).to eq([10, 10, 5])
  end

  it "translates l to 50" do
    test_string = "lxxi"
    translation = translator.call(test_string)

    expect(translation.value).to eq([50, 10, 10, 1])
  end

  it "translates c to 100" do
    test_string = "ccc"
    translation = translator.call(test_string)

    expect(translation.value).to eq([100, 100, 100])
  end

  it "translates d to 500" do
    test_string = "dccxi"
    translation = translator.call(test_string)

    expect(translation.value).to eq([500, 100, 100, 10, 1])
  end

  it "translates m to 1000" do
    test_string = "mmdccv"
    translation = translator.call(test_string)

    expect(translation.value).to eq([1000, 1000, 500, 100, 100, 5])
  end
end
