require 'pry'
class Check
  attr_reader :sudoku
  attr_accessor :valid

  def initialize(sudoku)
    @sudoku = sudoku
    @valid  = true
  end

  def sudoku_steps
    check_rows
    if @valid
      check_columns
    else
      print 'false'
    end
    if @valid
      check_sub_boxes
    else
      print 'false'
    end
  end

  def check_sub_boxes
    binding.pry
  end

  def check_columns
    column_number = 0
    number_in_column = -1
    numbers_checked = 0
    column_collector = []
    until numbers_checked == 81
      if column_collector.include?(@sudoku[column_number][number_in_column]) && @sudoku[column_number][number_in_column] != "."
        @valid = false
        break
      else
        column_collector << @sudoku[column_number][number_in_column]
      end
      column_number += 1
      if column_number == 8
        column_collector = []
        column_number = 0
        number_in_column += 1
      end
      numbers_checked += 1
    end
  end

  def check_rows
    @sudoku.map do |row|
      row_collector = []
      row.map do |num|
        if row_collector.include?(num) && num != "."
          @valid = false
          break
        else
          row_collector << num
        end
      end
      break if !valid
    end
  end
end

sudoku = [
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]

Check.new(sudoku).sudoku_steps
