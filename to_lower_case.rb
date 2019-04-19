# Implement method that has a string parameter str, and returns the same string in lowercase.

class String
  def to_lower_case(input_string)
    lowercase = input_string.chars.map do |char|
      char.gsub(char, char.downcase)
    end.join
    p lowercase
  end
end

string = "LemonGrass"

String.new.to_lower_case(string)
