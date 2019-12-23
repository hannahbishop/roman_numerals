require_relative '../roman_validator'

describe RomanValidator do
  validator = RomanValidator.new()

  it "rejects strings that have digits with illegal right neighbors" do
    test_string = "vl"
    result = validator.call(test_string)
    expect(result).to be(false)
  end

  it "approves strings that have digits with legal right neighbors" do
    test_string = "mlxi"
    result = validator.call(test_string)
    expect(result).to be(true)
  end
end
