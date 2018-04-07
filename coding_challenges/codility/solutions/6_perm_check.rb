# First Solution
def solution(a)
  orig_permutation = (1..a.length).to_a
  a.sort == orig_permutation ? 1 : 0
end

# Time Space Complexity
# Time O(log n)
# Space O(n)

# Second Solution
require 'set'

def solution(a)
  a_set = Set.new(a) # takes Time O(n)
  (1..a.length).each do |num|
    unless a_set.include? num
      return 0
    end
  end
  1
end