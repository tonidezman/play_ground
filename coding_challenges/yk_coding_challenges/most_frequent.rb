def most_frequent(arr)
  counter = Hash.new { |hsh, key| hsh[key] = 0 }
  arr.each { |num| counter[num] += 1 }

  current_num = -1
  current_max = 0
  counter.each do |num, num_count|
    if num_count > current_max
      current_max = num_count
      current_num = num
    end
  end
  return current_num
end

data = [1, 2, 3, 3, 3, 3, 4, 5, 1, 2]

puts most_frequent(data)