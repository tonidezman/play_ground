def solution(x, y, d)
  distance = y - x
  num_of_jumps = distance / d

  if distance % d != 0
    return num_of_jumps + 1
  end

  num_of_jumps
end