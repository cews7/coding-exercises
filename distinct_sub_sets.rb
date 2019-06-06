require 'pry'
class Distinct
  attr_accessor :sub_set_list

  def initialize
    @sub_set_list = []
  end

  def sub_set(input)
    #have i seen this combo of numbers before, no? put it in the new array
    
    sub_set_list << [sub_num] if !sub_set_list.include?([sub_num])
    p sub_set_list
  end
end

nums = [1,2,3]
Distinct.new.sub_set(nums)
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
