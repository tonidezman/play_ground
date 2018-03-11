def rotate_arr(arr_of_arrays)

  result = Array.new(arr_of_arrays.length) {[]}

  arr_of_arrays.each_with_index do |arr, i|
    arr.each_with_index do |el, j|
      result[j].unshift(el)
    end
  end

  result
end

x = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

puts rotate_arr(x).inspect