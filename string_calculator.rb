class StringCalculator
  def self.add(input)
    return 0 if input == ''

    numbers = extract_numbers(input)
    # Calling with ! because the execution will stop from here if any negative number(s)
    check_for_negatives!(numbers)

    numbers.sum
  end

  private

  def self.extract_numbers(input)
    # Default delimiter
    delimiter = /[\n,]/
    # handle custom delimiter e.g //;\n1;2
    if input.start_with?("//")
      delimiter_line, input = input.split("\n")
      custom_delimiter = delimiter_line[2..]
      delimiter = /[#{Regexp.escape(custom_delimiter)}\n,]/
    end
    input.split(delimiter).map(&:to_i)
  end

  def self.check_for_negatives!(numbers)
    negatives = numbers.select { |x| x < 0 }
    if negatives.any?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end
  end
end
