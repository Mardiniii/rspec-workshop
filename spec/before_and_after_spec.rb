RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'
  end

  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(3 - 2).to eq(1)
  end
end

# Assignment

# RSpec.describe 'multi context hooks' do
#   before(:context) do
#     puts 'K'
#   end
#
#   before(:example) do
#     puts 'Z'
#   end
#
#   after(:example) do
#     puts 'E'
#   end
#
#   it 'can multiply' do
#     expect(3 * 7).to eq(21)
#   end
#
#   it 'can divide' do
#     expect(40 / 8).to eq(5)
#   end
#
#   context 'with some criteria' do
#     before(:context) do
#       puts 'H'
#     end
#
#     before(:example) do
#       puts 'B'
#     end
#
#     it 'can subtract' do
#       expect(10 - 5).to eq(5)
#     end
#
#     context 'in this condition' do
#       before(:example) do
#         puts 'V'
#       end
#
#       it 'can add' do
#         expect(8 + 6).to eq(14)
#       end
#     end
#   end
# end
