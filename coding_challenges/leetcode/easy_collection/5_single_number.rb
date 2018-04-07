def single_number(nums)
  xor_nums = 0

  nums.each do |num|
    xor_nums ^= num
  end
  xor_nums
end