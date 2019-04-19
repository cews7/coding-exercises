# return indices of two numbers that add up to target
require 'pry'

nums = [3,4,10,0,7,8,1]

class Add
  def indices(target, numbers)
    collector = []
    numbers.map.with_index do |fixed_comparison, fixed_index|
      numbers.map.with_index do |moving_comparison, moving_index|
        if (fixed_comparison + moving_comparison == target)
          collector << fixed_index
          collector << moving_index
        end
      end
    end
    p collector.uniq
  end
end

Add.new.indices(9, nums)
