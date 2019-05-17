class Rate
  def employee_importance(all_employees, threshold_employee_id)
    threshold_employee_id_hit = false
    value_sum = 0
    all_employees.map do |employee|
      threshold_employee_id_hit = true if employee[0] == threshold_employee_id
      value_sum += employee[1] if threshold_employee_id_hit == true
    end
    print value_sum
  end
end

staff = [[1, 5, [2, 3]], [2, 3, []], [3, 3, []]]

Rate.new.employee_importance(staff, 2)
