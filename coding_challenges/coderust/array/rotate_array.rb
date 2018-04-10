def rotate_array(arr, num_times)
  arr.reverse!
  arr[0, num_times].reverse + arr[num_times, arr.length - 1]
end

arr = [1, 2, 3, 4, 5]
puts rotate_array(arr, 2).inspect