def move_zeroes(nums)
  zero_moved = true
  last_indx = nums.length - 1

  while zero_moved
    zero_moved = false

    for i in 1..last_indx
      if swap_zero_and_num! nums, i
        zero_moved = true
      end
    end
  end
end

def swap_zero_and_num!(nums, i)
  if nums[i-1] == 0 && nums[i] != 0
    nums[i-1] = nums[i]
    nums[i] = 0
    return true
  end
  false
end