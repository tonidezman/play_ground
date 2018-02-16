def rotate(nums, k)
  k.times { nums.unshift(nums.pop) }
  nil
end