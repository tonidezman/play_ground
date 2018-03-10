def is_rotation(arr_1, arr_2)
  pointer_1 = 0
  pointer_2 = arr_2.index(arr_1[0])
  return false unless pointer_2
  return false if arr_1.length != arr_2.length

  arr_1.each_with_index do |num, index|
    return false if arr_1[pointer_1] != arr_2[pointer_2 % arr_2.length]
    pointer_1 += 1
    pointer_2 += 1
  end
  return true
end

x = [1, 2, 3, 4, 5, 6, 7]
y = [4, 5, 6, 7, 8, 1, 2, 3]

puts(is_rotation(x, y))
