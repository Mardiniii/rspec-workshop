class ProgrammingLanguage
  attr_reader :name

  def initialize(name = "Ruby")
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  # language will be available in any child block, even the nested ones.
  let(:language) { ProgrammingLanguage.new("Python") }

  it "should store the name of the language" do
    expect(language.name).to eq("Python")
  end

  context "with no argument" do
    # This re-assignment only applies to the current scope.
    let(:language) { ProgrammingLanguage.new }

    it "should default to Ruby as the name" do
      expect(language.name).to eq("Ruby")
    end
  end
end
