RSpec.describe "satisfy matcher" do
  subject { "racecar" }
  subject { "racecars" }

  it "is a palindrome" do
    # if true it is satisfied otherwise it is not satisfied
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  # more readable format to know more about the assertion
  it "can accept a custom error message" do
    expect(subject).to satisfy("be a palindrome") do |value|
      value == value.reverse
    end
  end
end