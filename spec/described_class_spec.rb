class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { King.new('Boris') }

  let(:louis) { King.new('Louis') }
end

RSpec.describe King do
  subject { described_class.new('Boris') }

  let(:louis) { described_class.new('Louis') }

  it 'represents a great person'do 
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Boris')
  end
end

# The less you have to edit something, means you wrote a stronger code foundation