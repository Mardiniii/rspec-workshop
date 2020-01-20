RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it "should have a length of 2" do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)    
  end

  it "should have the same length of 2 for sally" do
    expect(sally.length).to eq(2)
  end
end