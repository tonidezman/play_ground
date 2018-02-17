def plus_one(digits)
  last_indx = digits.length - 1
  i = last_indx
  can_carry = false

  if digits[i] + 1 == 10
    digits[i] = 0
    can_carry = true
  else
    digits[i] += 1
  end

  return digits unless can_carry

  i = last_indx - 1
  while i >= 0
    if can_carry
      if(digits[i] + 1) == 10
        digits[i] = 0
        can_carry = true
      else
        digits[i] += 1
        can_carry = false
      end
    end
    i -= 1
  end

  if digits[0] == 0
    return [1] + digits
  end

  digits
end
