require 'gem_calculating'

describe Calculate do
  it 'can add two numbers' do
    expect(Calculate.add(2, 3)).to eq(5)
  end

  it 'cannot add strings' do
    expect(Calculate.add('2', '3')).to eq(nil)
  end

  it 'can subtract two numbers' do
    expect(Calculate.subtract(3, 2)).to eq(1)
  end

  it 'cannot subtract strings' do
    expect(Calculate.subtract('3', '2')).to eq(nil)
  end

  it 'can multiply two numbers' do
    expect(Calculate.multiply(4, 2)).to eq(8)
  end

  it 'cannot multiply strings' do
    expect(Calculate.multiply('4', '2')).to eq(nil)
  end

  it 'can divide two numbers' do
    expect(Calculate.divide(4, 2)).to eq(2)
  end

  it 'cannot divide by zero' do
    expect(Calculate.divide(4, 0)).to eq(nil)
  end

  it 'cannot divide strings' do
      expect(Calculate.divide('4', '2')).to eq(nil)
  end
end