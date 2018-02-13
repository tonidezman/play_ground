def solution(arr)
  p_arr = arr[1..-1]
  sum_p = p_arr.reduce(:+)

  current_a = arr[0]
  differences = []
  p_arr.each do |num|
    differences << (current_a -sum_p).abs
    current_a += num
    sum_p -= num
  end

  differences.min
end