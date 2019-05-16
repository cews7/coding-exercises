class NumeralConverter
  def initialize
    @roman_dictionary = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000 }
  end

  def roman(input)
    total = 0
    input.chars.map.with_index do |char, i|
      if char == 'V' && input.chars[i - 1] == 'I'
        total += 3
      elsif char == 'X' && input.chars[i - 1] == 'I'
        total += 8
      elsif char == 'L' && input.chars[i - 1] == 'X'
        total += 30
      elsif char == 'C' && input.chars[i - 1] == 'X'
        total += 80
      elsif char == 'D' && input.chars[i - 1] == 'C'
        total += 300
      elsif char == 'M' && input.chars[i - 1] == 'C'
        total += 800
      else
        total += @roman_dictionary[char]
      end
    end
    print total
  end
end

sample_input = "MCMXCIV"
NumeralConverter.new.roman(sample_input)
