require '../decimal_sequence'

describe DecimalSequence do
  it "stores a list of integers" do
    sequence = DecimalSequence.new([10, 5, 1])
    expect(sequence.value).to eq([10, 5, 1])
  end
end
