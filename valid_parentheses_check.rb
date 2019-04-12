# Input: "(()()(())"
# Output: false

# Input: "()()"
# Output: true


class Valid
  # in english, iterate over each parentheses symbol
  # track when a parentheses symbol is opened push that to a new array
  # track when a parentheses is closes, push that to a new array
  # check the length of both arrays, expect that to be the same
  # if not return false otherwise return true
  def parentheses?(string)
    open_arr = Array.new
    close_arr = Array.new
    string.chars.each do |char|
      char.eql?("(") ? open_arr.push(char) : ""
      char.eql?(")") ? close_arr.push(char) : ""
    end
    if open_arr.length == close_arr.length
      print 'true'
    else
      print 'false'
    end
  end
end

input_string = "())"

valid = Valid.new
valid.parentheses?(input_string)
