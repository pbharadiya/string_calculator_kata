class StringCalculator
  def self.add(input)
    return 0 if input == ''

    # Default delimiter
    delimiter = /[\n,]/
    # handle custom delimiter e.g //;\n1;2
    if input.start_with?("//")
      delimiter_line, input = input.split("\n")
      custom_delimiter = delimiter_line[2..]
      delimiter = /[#{Regexp.escape(custom_delimiter)}\n,]/
    end
    numbers = input.split(delimiter).map(&:to_i)

    negatives = numbers.select { |x| x < 0 }
    if negatives.any?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end
    numbers.sum
  end
end
