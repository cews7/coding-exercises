class Search
  def insert_position(input_array, input_value)
    return_index = 0
    input_array.map.with_index do |number, index|
      if number == input_value
        return_index = index
      elsif input_value < input_array[0]
        return_index
      elsif input_value > input_array[-1]
        return_index = input_array.length
      elsif number < input_value && input_value < input_array[index + 1]
        return_index = index + 1
      end
    end
    print return_index
  end
end

integers = [4,5,6,7]
value = 3
Search.new.insert_position(integers, value)
