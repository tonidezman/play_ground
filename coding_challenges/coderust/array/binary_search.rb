# find number (ie 20)
# return -1 if number is not found
# return index of the number found
# array is sorted in ascending order

sorted_nums = [1, 2, 10, 20, 47, 59, 63, 75, 88, 99, 107, 120, 133, 155, 162, 176, 188, 199, 200, 210, 222]

def binary_search(sorted_nums, search_num)
  num_not_found = -1
  return num_not_found if (search_num < sorted_nums.first) || (search_num > sorted_nums.last)

  left_pointer = 0
  right_pointer = sorted_nums.length - 1
  return left_pointer if search_num == sorted_nums[left_pointer]

  while left_pointer < right_pointer
    middle_count_between_left_and_right_pointer = ((right_pointer - left_pointer).to_f / 2).ceil
    guess_index = left_pointer + middle_count_between_left_and_right_pointer
    guess_num = sorted_nums[guess_index]

    if guess_num == search_num
      return guess_index
    elsif guess_num < search_num
      left_pointer = guess_index
    elsif guess_num > search_num
      right_pointer = guess_index
    end
  end
  return num_not_found
end

puts binary_search(sorted_nums, 2)