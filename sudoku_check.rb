class Check
  attr_reader :sudoku
  attr_accessor :valid

  def initialize(sudoku)
    @sudoku = sudoku
    @valid  = true
  end

  def sudoku_steps
    check_rows
    check_columns
    generate_sub_boxes
    print @valid.to_s
  end

  def generate_sub_boxes
    one, two, three, four, five, six, seven, eight, nine = [],[],[],[],[],[],[],[],[]
     @sudoku.map.with_index do |row, curr_row_i|
      row.map.with_index do |num, curr_col_i|
        one   << num if [*0..2].include?(curr_col_i) && [*0..2].include?(curr_row_i)
        two   << num if [*3..5].include?(curr_col_i) && [*0..2].include?(curr_row_i)
        three << num if [*6..8].include?(curr_col_i) && [*0..2].include?(curr_row_i)
        four  << num if [*0..2].include?(curr_col_i) && [*3..5].include?(curr_row_i)
        five  << num if [*3..5].include?(curr_col_i) && [*3..5].include?(curr_row_i)
        six   << num if [*6..8].include?(curr_col_i) && [*3..5].include?(curr_row_i)
        seven << num if [*0..2].include?(curr_col_i) && [*6..8].include?(curr_row_i)
        eight << num if [*3..5].include?(curr_col_i) && [*6..8].include?(curr_row_i)
        nine  << num if [*6..8].include?(curr_col_i) && [*6..8].include?(curr_row_i)
      end
    end
    boxes = [one,two,three,four,five,six,seven,eight,nine]
    validate_sub_boxes(boxes)
  end

  def validate_sub_boxes(boxes)
    boxes.map do |box|
      box.delete(".")
      @valid = false if box.length > box.uniq.length
    end
  end

  def check_columns
    column_number = 0
    number_in_column = -1
    numbers_checked = 0
    column_collector = []
    until numbers_checked == 81
      if column_collector.include?(@sudoku[column_number][number_in_column]) &&
        @sudoku[column_number][number_in_column] != "."
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
  ["8","3",".",".","7",".",".",".","."],
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
