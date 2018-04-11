def find_low_high_indx(arr, num)
  indx = find(arr, num)
  not_found = -1
  return not_found if indx == not_found
  return [find_low(arr, indx), find_high(arr, indx)]
end

# finds number in array and returns index or -1 if not found
def find(arr, search_num)
  not_found = -1
  p_low = 0
  p_high = arr.length - 1
  p_guess = p_low + (p_high - p_low) / 2

  while p_low <= p_high
    return p_guess if arr[p_guess] == search_num
    if arr[p_guess] < search_num
      p_low = p_guess + 1
    else
      p_high = p_guess - 1
    end
    p_guess = p_low + (p_high - p_low) / 2
  end
  not_found
end

def find_low(arr, indx)
  search_num = arr[indx]
  p_low = 0
  p_high = indx
  p_guess = p_low + (p_high - p_low) / 2

  loop do
    if arr[p_guess] == search_num
      one_before = p_guess - 1
      return p_guess if p_guess.zero? || (arr[one_before] != search_num)
    end

    if arr[p_guess] > search_num
      p_high = p_guess - 1
    else
      p_low = p_guess + 1
    end
    p_guess = p_low + (p_high - p_low) / 2
  end
end

def find_high(arr, indx)
  search_num = arr[indx]
  p_low = indx
  p_high = arr.length - 1
  last_indx = arr.length - 1
  p_guess = p_low + (p_high - p_low) / 2

  loop do
    if arr[p_guess] == search_num
      one_ahead = p_guess + 1
      return p_guess if (p_guess == last_indx) || (arr[one_ahead] != search_num)
    end

    if arr[p_guess] > search_num
      p_high = p_guess - 1
    else
      p_low = p_guess + 1
    end
    p_guess = p_low + (p_high - p_low) / 2
  end
end

arr = [1, 2, 5, 5, 5, 5, 5, 5, 5, 7, 20, 20]
puts find_low_high_indx(arr, 20).inspect