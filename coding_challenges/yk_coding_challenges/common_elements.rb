require 'set'

def common_elements(arr_1, arr_2)
  result = []
  seen_nums = Set.new(arr_1)

  arr_2.each do |num|
    result << num if seen_nums.include?(num)
  end

  result
end

x = [1, 2, 3, 5]
y = [9, 8, 7, 3, 2, 6, 1]

puts common_elements(x, y).inspect