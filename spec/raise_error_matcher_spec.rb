RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end

  class CustomError < StandardError; end

  it 'can check for specific error being raised' do
    # We should pass an specific error we expect to happen
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it "can check for a user-created error" do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end