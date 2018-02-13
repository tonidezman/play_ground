def solution(x, y, d)
  num_of_jumps = y / d
  jump_state = x * num_of_jumps

  if jump_state < y
    return num_of_jumps + 1
  end

  num_of_jumps
end