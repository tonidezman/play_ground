def rotate2d_array(arr)
  arr_length = arr.length.to_f

  row_floor = (arr_length / 2).ceil - 1
  col_ceil = (arr_length / 2).floor - 1

  temp_arr = [-1,-1,-1,-1]

  0.upto(row_floor).each do |i|
    0.upto(col_ceil).each do |j|
      current_row = i
      current_col = j
      0.upto(3) do |k|
        temp_arr[k] = arr[current_row][current_col]
        current_row, current_col = new_coordinates(arr_length, current_row, current_col)
      end

      0.upto(3) do |k|
        arr[current_row][current_col] = temp_arr[(k + 3) % 4]
        current_row, current_col = new_coordinates(arr_length, current_row, current_col)
      end
    end
  end
end

def new_coordinates(n, i, j)
  new_i = j
  new_j = n - 1 - i
  [new_i, new_j]
end

fields = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 16],
]
puts fields.inspect
rotate2d_array(fields)
puts fields.inspect
