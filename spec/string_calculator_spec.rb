require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns number itself for when single digit is passed' do
      expect(StringCalculator.add("7")).to eq(7)
    end

    it 'returns the sum of two comma-separated numbers as input' do
      expect(StringCalculator.add("3, 4")).to eq(7)
    end

    it 'returns the sum for multiple comma-separated numbers as input' do
      expect(StringCalculator.add("3, 4, 5, 6")).to eq(18)
    end

    it 'returns correct summation when new line between numbers as input' do
      expect(StringCalculator.add("3\n5,7")).to eq(15)
    end

    it 'supports custom delimiter like //[delimiter]\n[numbers…] e.g //;\n1;2' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end
end
