require '../decimal_roman_translator'

describe DecimalRomanTranslator do
  translator = DecimalRomanTranslator.new()
  
  it "can translate a decimal string containing additive terms" do
    val1 = 666
    val2 = 777
    val3 = 888
    val4 = 1123
    val5 = 2234
    val6 = 555
    expect(translator.call(val1)).to eq("dclxvi")
    expect(translator.call(val2)).to eq("dcclxxvii")
    expect(translator.call(val3)).to eq("dccclxxxviii")
    expect(translator.call(val4)).to eq("mcxxiii")
    expect(translator.call(val5)).to eq("mmccxxxiv")
    expect(translator.call(val6)).to eq("dlv")
  end

  it "can translate a decimal string containing subtractive terms" do
    val1 = 4
    val2 = 19
    val3 = 39
    val4 = 40
    val5 = 99
    val6 = 494
    val7 = 4499
    val8 = 9000
    expect(translator.call(val1)).to eq("iv")
    expect(translator.call(val2)).to eq("xix")
    expect(translator.call(val3)).to eq("xxxix")
    expect(translator.call(val4)).to eq("xl")
    expect(translator.call(val5)).to eq("xcix")
    expect(translator.call(val6)).to eq("cdxciv")
    expect(translator.call(val7)).to eq("mmmmcdxcix")
  end

  it "operates on absolute value if it receives a negative term" do
    test_number = -20
    translation = translator.call(test_number)

    expect(translation).to eq("xx")
  end
end
