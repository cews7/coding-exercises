class Rob
  def self.houses(input)
    total_one = 0
    total_two = 0
    input.map.with_index do |n, i|
      total_one += n.to_i if i.even?
      total_two += n.to_i if i.odd?
    end
    total_one > total_two ? puts(total_one) : puts(total_two)
  end
end

n = [1,2,3,1]
Rob.houses(n)
