require 'pry'
class Distinct
  def self.sub_set(input)
    if input == []
      input
    else
      input.map do |num|
        [num] + sub_set(input[1...-1])
      end
    end
  end
end

nums = [1,2,3]
print Distinct.sub_set(nums)
# [
#   [3],
#   [1],
#   [2],
#   [1,2,3],
#   [1,3],
#   [2,3],
#   [1,2],
#   []
# ]
