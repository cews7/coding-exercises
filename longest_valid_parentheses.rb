def longest_valid_parentheses(input)
  sub_string = ""
  input.chars.map.with_index do |char, i|
    if char == "(" && input[i + 1] == ")"
      sub_string << char
      sub_string << input[i + 1]
    end
  end
  print sub_string.length
end


string = "(()"
longest_valid_parentheses(string)
