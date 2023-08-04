require_relative '../solver'

RSpec.describe Solver do
  subject(:solver) { described_class.new }

  describe '#factorial' do
    it 'returns 1 for factorial of 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns 1 for factorial of 1' do
      expect(solver.factorial(1)).to eq(1)
    end

    it 'returns the correct factorial for positive integers' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an ArgumentError for negative integers' do
      expect { solver.factorial(-5) }.to raise_error(ArgumentError, 'Factorial not defined for negative numbers')
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('python')).to eq('nohtyp')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when number is divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when number is divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when number is divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns number as a string for other cases' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(17)).to eq('17')
    end
  end
end
