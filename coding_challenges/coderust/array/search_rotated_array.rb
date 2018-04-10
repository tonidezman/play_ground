# find the starting point of the rotation
# if search number is grater than arr last item we should search
# inside left_pointer = 0 and right_pointer= starting_index - 1

def search_rotated_array(arr, search_number)
  start_index = find_rotation_index arr

  if search_number > arr.first
    pointer_left = 0
    pointer_right = start_index - 1
  else
    pointer_left = start_index
    pointer_right = arr.length - 1
  end

  while pointer_left < pointer_right
    guess_index = (pointer_left + pointer_right) / 2
    return guess_index if arr[guess_index] == search_number

    if arr[guess_index] < search_number
      pointer_left = guess_index + 1
    else
      pointer_right = guess_index - 1
    end
  end

  -1
end

def find_rotation_index(arr) #rubocop:disable all
  return 0 if arr.first < arr.last

  left_pointer = 0
  right_pointer = arr.length - 1

  while left_pointer < right_pointer
    guess_index = (left_pointer + right_pointer) / 2
    is_guess_index_starting_point = arr[guess_index] <= arr[left_pointer] && arr[guess_index] >= arr[right_pointer]
    is_right_pointer_starting_point = arr[guess_index] >= arr[left_pointer] && arr[guess_index] <= arr[right_pointer]
    return guess_index if is_guess_index_starting_point
    return right_pointer if is_right_pointer_starting_point

    if arr[left_pointer] > arr[guess_index]
      right_pointer = guess_index
    else
      left_pointer = guess_index
    end

  end
end

arr = [176, 188, 199, 200, 210, 222, 1, 10, 20, 47, 59, 63, 75, 88, 99, 107]
