BOMB_MARKER = -1

def mine_sweeper(bombs, row_size, col_size)
  board = generate_board(row_size, col_size)

  bombs.each do |bomb|
    board[bomb[0]][bomb[1]] = BOMB_MARKER
  end

  bombs.each do |bomb|
    update_surrounding_cells!(board, bomb)
  end

  board
end

def generate_board(row_size, col_size)
  result = []
  default_value = 0

  (0...row_size).each do |_|
    current_row = []
    (0...col_size).each do |_|
      current_row << default_value
    end
    result << current_row
  end
  result
end

def update_surrounding_cells!(board, bomb)
  row = bomb[0]
  col = bomb[1]

  start_row = get_start_index(row)
  start_col = get_start_index(col)
  end_row = row + 1
  end_col = col + 1

  (start_row).upto(end_row) do |row_index|
    (start_col).upto(end_col) do |col_index|
      if board[row_index][col_index] != BOMB_MARKER
        board[row_index][col_index] += 1
      end
    end
  end
end

def get_start_index(indx)
  possible_index = indx - 1
  if possible_index < 0
    0
  else
    possible_index
  end
end

puts mine_sweeper([[0, 0],[0,1]], 3, 4).inspect