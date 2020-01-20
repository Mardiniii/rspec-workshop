RSpec.describe Hash do
  # Overwrite the subject to whatever we need
  # You can customize what the instance represents
  subject(:bob) do
    { a: 1, b: 2 }  
  end

  # equivalent to: 
  let(:bob) { { a: 1, b: 2 } }
  # but subject offers more tools not explored yet

  it "has two key-value pairs" do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe "nested example"do
    it "has two key-value pairs" do 
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end