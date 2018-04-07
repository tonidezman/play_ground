require 'pry'

def is_valid_sudoku?(board)
  return false if any_row_invalid? board
  return false if any_column_invalid? board
  return false if any_sub_square_invalid? board
  true
end

def any_sub_square_invalid?(board)
  require pry; binding.pry
  i_cap = 3
  j_cap = 3

  square = []
  board_length = board.length

  while i < board_length
    while i < i_cap
      while j < j_cap
        square << board[i][j]
        j += 1
      end
      i += 1

      if i == i_cap
        return false if invalid_sudoku_nums? square
        square = []
        if (j_cap + 3) > board_length
          i_cap += 3
          j = 0
          j_cap = 3
        else
          j_cap += 3
        end
      end
      j -= 3
    end
  end
end

def any_column_invalid?(board)
  board.transpose.each do |column|
    return false if invalid_sudoku_nums? column
  end
  true
end

def any_row_invalid?(board)
  board.each do |row|
    return false if invalid_sudoku_nums? row
  end
  true
end

def invalid_sudoku_nums?(arr)
    arr_clone = arr.clone
    arr_clone.delete('.')
    return true if arr_clone != arr_clone.uniq
    false
end

board = [[".","8","7","6","5","4","3","2","1"],["2",".",".",".",".",".",".",".","."],["3",".",".",".",".",".",".",".","."],["4",".",".",".",".",".",".",".","."],["5",".",".",".",".",".",".",".","."],["6",".",".",".",".",".",".",".","."],["7",".",".",".",".",".",".",".","."],["8",".",".",".",".",".",".",".","."],["9",".",".",".",".",".",".",".","."]]

is_valid_sudoku? board