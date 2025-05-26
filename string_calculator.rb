class StringCalculator
  def self.add(input)
    return 0 if input == ''

    # Default delimiter
    delimiter = /[\n,]/
    # handle //;\n1;2
    if input.start_with?("//")
      delimiter_line, input = input.split("\n")
      custom_delimiter = delimiter_line[2..]
      delimiter = /[#{Regexp.escape(custom_delimiter)}\n,]/
    end
    numbers = input.split(delimiter).map(&:to_i)
    numbers.sum
  end
end
