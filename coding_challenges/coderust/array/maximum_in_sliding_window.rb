def find_max_in_sliding_window(windows, window_size = 3)

  pointer_left = 0
  pointer_right = window_size - 1

  while pointer_right < windows.length
    puts windows[pointer_left..pointer_right].max
    pointer_left += 1
    pointer_right += 1
  end

end

windows = [-4, 2, -5, 1, -1, 6]
find_max_in_sliding_window(windows)