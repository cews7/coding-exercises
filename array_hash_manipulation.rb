# x = [{"a" => 10},{"b" => 20},{"c" => 30}]
# one array containing all keys
# another containing all values
# the sum of all the values

class Grab
  def array_of_keys(collection)
    keys = collection.map do |hash|
      hash.keys
    end.flatten
    p keys
  end

  def array_of_values(collection)
    values = collection.map { |hash| hash.values }.flatten
    p values
  end

  def sum_of_values(collection)
    sum = collection.map do |hash|
      hash.values[0]
    end.reduce(:+)
    p sum
  end
end

collection = [{"a" => 10},{"b" => 20},{"c" => 30}]

Grab.new.array_of_keys(collection)
Grab.new.array_of_values(collection)
Grab.new.sum_of_values(collection)
