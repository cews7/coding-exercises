class Add
  def add_until_one_digit(number)
    if number.to_s.chars.length.eql? 1
      print number
    else
      add_until_one_digit(number.to_s.chars.map(&:to_i).reduce(:+))
    end
  end
end

number = 38
Add.new.add_until_one_digit(number)
