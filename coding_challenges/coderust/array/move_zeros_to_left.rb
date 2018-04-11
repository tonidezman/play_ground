arr = [1, 10, 20, 0, 59, 63, 0, 88, 0]
zeros_count = arr.count(0)
result = Array.new(zeros_count) { 0 }

arr.each do |num|
  result << num if !num.zero?
end

p arr
p result
