def intersect(nums1, nums2)
  hsh_nums1 = convert_to_counter_nums nums1
  hsh_nums2 = convert_to_counter_nums nums2

  result = []
  hsh_nums1.each do |num, _|
    if hsh_nums2[num]
      ([hsh_nums1[num], hsh_nums2[num]]).min.times do
        result << num
      end
    end
  end

  result
end

def convert_to_counter_nums(nums)
  hsh = {}

  nums.each do |num|
    if hsh[num]
      hsh[num] += 1
    else
      hsh[num] = 1
    end
  end
  hsh
end