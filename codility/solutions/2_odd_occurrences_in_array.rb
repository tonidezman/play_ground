require 'set'

def solution(nums)
  unpaired_nums = Set.new

  nums.each do |num|
    if unpaired_nums.include? num
      unpaired_nums.delete num
    else
      unpaired_nums.add num
    end
  end
  unpaired_nums.to_a[0]
end

# Time-Space complexity
# Time  O(n)
# Space O(n)