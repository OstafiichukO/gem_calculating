require 'gem_calculating'

describe Calculator::Base do
  it 'can add two numbers' do
    expect(Calculator::Base.add(2, 3)).to eq(5)
  end

  it 'cannot add strings' do
    expect(Calculator::Base.add('2', '3')).to eq(nil)
  end

  it 'can subtract two numbers' do
    expect(Calculator::Base.subtract(3, 2)).to eq(1)
  end

  it 'cannot subtract strings' do
    expect(Calculator::Base.subtract('3', '2')).to eq(nil)
  end

  it 'can multiply two numbers' do
    expect(Calculator::Base.multiply(4, 2)).to eq(8)
  end

  it 'cannot multiply strings' do
    expect(Calculator::Base.multiply('4', '2')).to eq(nil)
  end

  it 'can divide two numbers' do
    expect(Calculator::Base.divide(4, 2)).to eq(2)
  end

  it 'cannot divide by zero' do
    expect(Calculator::Base.divide(4, 0)).to eq(nil)
  end

  it 'cannot divide strings' do
      expect(Calculator::Base.divide('4', '2')).to eq(nil)
  end
end