class Most
  require 'pry'
  def popular_element(input)
    occurances_per_element = input.inject({}) do |result, el|
      if !result[el].nil?
        result[el] += 1
        result
      else
        result[el] = 1
        result
      end
    end
    print occurances_per_element.key(occurances_per_element.values.sort.last)
  end
end

array = [1,222,222,222,222,3,5,1,3,1, "c", "d", "d"]
Most.new.popular_element(array)
