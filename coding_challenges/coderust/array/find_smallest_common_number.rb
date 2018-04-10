# You have three sorted arrays and you have to find
# smallest number in all arrays

def find_min(a1, a2, a3)
  # a => array and p => pointer

  p1 = 0
  p2 = 0
  p3 = 0

  while (p1 < a1.length &&
        p2 < a2.length &&
        p3 < a2.length)

    all_nums_are_equal = a1[p1] == a2[p2] && a2[p2] == a3[p3]
    number = a1[p1]
    return number if all_nums_are_equal

    is_a1_value_to_small = a1[p1] < [a2[p2], a3[p3]].max
    if is_a1_value_to_small
      p1 += 1
    end

    is_a2_value_to_small = a2[p2] < [a1[p1], a3[p3]].max
    if is_a2_value_to_small
      p2 += 1
    end

    is_a3_value_to_small = a3[p3] < [a2[p2], a1[p1]].max
    if is_a3_value_to_small
      p3 += 1
    end
  end

  "Not found"
end

a1 = [1, 2, 3, 4, 5]
a2 = [2, 3, 5]
a3 = [4, 5, 7]

puts find_min(a1, a2, a3)