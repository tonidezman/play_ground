EMPTY_CELL_MARKER = 0
REVEALED_CEL_MARKER = -2

def click(field, num_rows, num_cols, clicked_row, clicked_col)
  if field[clicked_row][clicked_col] == EMPTY_CELL_MARKER
    field[clicked_row][clicked_col] = REVEALED_CEL_MARKER
  end

  # click surrounding cells if empty cell marker
  start_row = (clicked_row - 1) >= 0 ? (clicked_row-1) : 0
  start_col = (clicked_col - 1) >= 0 ? (clicked_col-1) : 0
  end_row = clicked_row + 1
  end_col = clicked_col + 1

  start_row.upto(end_row) do |i|
    start_col.upto(end_col) do |j|
      next if i == clicked_row and j == clicked_col
      next unless field[i]

      if field[i][j] == EMPTY_CELL_MARKER
        click(field, num_rows, num_cols, i, j)
      end
    end
  end
end

field = [
  [0, 0,  0, 0],
  [0, 1,  1, 1],
  [0, 1, -1, 1],
  [0, 1,  0, 0]
]

click(field, 4, 4, 0, 0)

puts field.inspect