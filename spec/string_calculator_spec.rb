require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns number itself for when single digit is passed' do
      expect(StringCalculator.add(7)).to eq(7)
    end
  end
end
