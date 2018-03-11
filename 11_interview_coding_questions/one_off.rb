MISTAKE_CAP = 1

def one_off?(str_a, str_b)
  return one_off_same_length?(str_a, str_b) if str_a.length == str_b.length

  str_large = largest_str(str_a, str_b)
  str_small = smallest_str(str_a, str_b)
  return false if (str_large.length - str_small.length) > MISTAKE_CAP

  return one_off_diff_length?(str_large, str_small)
end

def largest_str(str_a, str_b)
  if str_a.length >= str_b.length
    str_a
  else
    str_b
  end
end

def smallest_str(str_a, str_b)
  if str_a.length >= str_b.length
    str_b
  else
    str_a
  end
end

def one_off_same_length?(str_a, str_b)
  pointer_a = 0
  pointer_b = 0
  mistake_counter = 0

  while pointer_a < str_a.length
    if str_a[pointer_a] != str_b[pointer_b]
      mistake_counter += 1
    end
    pointer_a += 1
    pointer_b += 1
  end

  mistake_counter <= MISTAKE_CAP
end

def one_off_diff_length?(str_large, str_small)
  pointer_large = 0
  pointer_small = 0
  mistake_counter = 0

  while pointer_large < str_large.length
    if str_large[pointer_large] == str_small[pointer_small]
      pointer_small += 1
      pointer_large += 1
    else
      mistake_counter += 1
      pointer_large += 1
    end
  end

  mistake_counter <= MISTAKE_CAP
end

x = 'abcd'
y = 'axbcd'
puts one_off?(x, y)