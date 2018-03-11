MISTAKE_CAP = 1

def one_off(str_a, str_b)

  str_large = largest_str(str_a, str_b)
  str_small = smallest_str(str_a, str_b)

  pointer_small = 0
  pointer_large = 0
  mistake_counter = 0

  while pointer_large < str_large.length
    if str_small[pointer_small] == str_large[pointer_large]
      pointer_small += 1
      pointer_large += 1
    else
      mistake_counter += 1

      if str_small.length == str_large.length
        pointer_small += 1
        pointer_large += 1
      else
        pointer_large += 1
      end
    end
  end

  mistake_counter <= MISTAKE_CAP
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

x = 'abcd'
y = 'axbc'
puts one_off(x, y)