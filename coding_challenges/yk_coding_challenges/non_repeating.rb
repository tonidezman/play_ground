def non_repeating(str)
  pointer = 0
  counter = Hash.new { |hsh, key| hsh[key] = 0 }

  str.each_char do |char|
    counter[char] += 1
  end

  counter.each do |char, num|
    return char if num == 1
  end
  return nil
end

puts(non_repeating("aab").inspect)
puts(non_repeating("aabc").inspect)
puts(non_repeating("aabb").inspect)