def solution(n)
  binary_str  = n.to_s(2)
  max_gap     = 0
  current_gap = 0

  binary_str.each_char do |char|
    if char == "1"
      max_gap = current_gap if current_gap > max_gap
      current_gap = 0
    else
      current_gap += 1
    end
  end
  max_gap
end

# Time-Space complexity
# Time  => O(n)
# Space => O(1)
