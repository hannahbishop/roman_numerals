require '../decimal_sequence'

describe DecimalSequence do
  sequence = DecimalSequence.new([10, 5, 1])
  
  it "stores a list of integers" do
    expect(sequence.value).to eq([10, 5, 1])
  end
  
  it "adds new integers to the end of the list" do
    sequence.add(1)
    expect(sequence.value).to eq([10, 5, 1, 1])
  end

  it "defaults to an empty list" do
    sequence = DecimalSequence.new()
    expect(sequence.value).to eq([])
  end
end
