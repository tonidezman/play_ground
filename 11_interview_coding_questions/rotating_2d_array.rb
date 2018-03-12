def rotate2d_array(arr)
  dup_array = arr.map(&:dup)
  arr.each_with_index do |row, i|
    row.each_with_index do |num, j|
      row, col = new_coordinates(arr.length, i, j)
      dup_array[row][col] = num
    end
  end

  dup_array
end

def new_coordinates(n, i, j)
  new_i = j
  new_j = n - 1 - i
  [new_i, new_j]
end

fields = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

puts rotate2d_array(fields).inspect