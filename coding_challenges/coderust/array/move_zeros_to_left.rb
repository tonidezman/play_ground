# out of place solution
arr = [1, 10, 20, 0, 59, 63, 0, 88, 0]
zeros_count = arr.count(0)
result = Array.new(zeros_count) { 0 }

arr.each do |num|
  result << num unless num.zero?
end

p arr
p result
