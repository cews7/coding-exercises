require 'prime'
class Prime
  def self.came_before(input)
    num_of_primes = 0
    range = [*0..input-1]
    range.map do |num|
      num_of_primes += 1 if Prime.prime?(num)
    end
    puts num_of_primes
  end
end

n = 10
Prime.came_before(n)
