# First Solution
def contains_duplicate(nums)
  seen_nums = Set.new
  nums.each do |num|
    if seen_nums.include? num
      return true
    else
      seen_nums.add num
    end
  end
  false
end

# Second Solution
def contains_duplicate(nums)
  nums != nums.uniq
end
