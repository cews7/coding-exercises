class NumberOf
  attr_reader :bits
  attr_accessor :ones_bits_count
  def initialize
    @bits = [0,0,1,0,1,1,0]
    @ones_bit_count = 0
  end

  def ones_bits
    bits.map do |bit|
      @ones_bit_count += 1 if bit == 1
    end
    print @ones_bit_count
  end
end

NumberOf.new.ones_bits
