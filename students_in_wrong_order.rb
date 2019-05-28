class Students
  def self.wrong_order_by_height(input)
    sorted_students = input.sort
    wrongly_placed_students = 0
    sorted_students.map.with_index do |student, index|
      if student != input[index]
        wrongly_placed_students += 1
      end
    end
    print wrongly_placed_students
  end
end

students = [1,1,4,2,1,3]

Students.wrong_order_by_height(students)
