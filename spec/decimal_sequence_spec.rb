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

  context "aggregates itself" do
    it "sums non-decreasing terms" do
      sequence = DecimalSequence.new([10, 10, 100])
      expect(sequence.aggregate()).to eq(120)
    end

    it "subtracts decreasing terms" do
      sequence = DecimalSequence.new([10, 1, 100])
      expect(sequence.aggregate()).to eq(109)
    end
  end
end
