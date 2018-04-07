def two_sum(nums, target)
  visited_nums = {}
  result = []

  nums.each_with_index do |num, indx|
    other_num = target - num
    if visited_nums[other_num]
      return [visited_nums[other_num], indx]
    else
      visited_nums[num] = indx
    end
  end
end