# First Solution
def solution(arr)
  current_min = 1

  arr.sort.each do |num|
    break if num > current_min

    if num > 0 && num == current_min
      current_min += 1
    end
  end

  current_min
end

# Time-Space complexity
# Time O(log n)
# Space O(n)

# Second Solution
require 'set'

def solution(arr)
  current_min = 1
  seen_nums = Set.new

  arr.each do |num|
    if num > 0
      seen_nums.add num
      if num == current_min
        loop do
          current_min += 1
          break unless seen_nums.include? current_min
        end
      end
    end
  end
  current_min
end

# Time-Space complexity
# Time O(n)
# Space O(1)