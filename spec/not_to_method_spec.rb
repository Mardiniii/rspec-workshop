RSpec.describe 'not_to_method' do
  it 'checks that two values do not match' do
    expect(5).not_to eq(10)
    expect("hello").not_to eq('Hello')
    expect([1, 2]).not_to eq([1, 2, 3])
  end
end