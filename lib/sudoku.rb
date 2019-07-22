class Sudoku

  def verify_correct_answer(string)
    raise "incorrect input length" if string.length < 81 || string.length > 81
    check_rows(string)
    check_columns(string)
    # check_squares(string)
  end

  def check_rows(string)
    rows = string.scan(/.{1,9}/)
    array_of_row_lengths = rows.map { |row|
      n = row.scan(/[1-9]/i).uniq.length
    }
    array_of_row_lengths.uniq.length == 1
  end

  def check_columns(string)
    p rows = string.scan(/.{1,9}/)
    column = []
    first_column = rows.map { |row|
      i = 0
      while i < 81
       p column << row[i] if row[i] != nil
        i += 9
      end
      # n = row.scan(/[1-9]/i).uniq.length
    }
    p column.uniq.length == 9
  end

  # def check_squares(string)
  #   rows = string.scan(/.{1,9}/)
  #   squares = rows.map { |row|
  #
  #   }
  # end
end
