def solution(a)
  n = a.length + 1
  sum_of_nums = (n * (n + 1)) / 2
  a.each do |num|
    sum_of_nums -= num
  end
  sum_of_nums
end