def max_profit(arr)
  current_max = -Float::INFINITY

  arr.each_with_index do |buy_value, i|
    is_last_index = (i+1) == arr.length
    break if is_last_index
    (i + 1).upto(arr.length-1) do |j|
      sell_value = arr[j]

      current_profit = sell_value - buy_value
      if current_profit > current_max
        current_max = current_profit
      end
    end
  end

  current_max
end

arr = [8, 5, 12, 9, 19, 1]
p max_profit(arr)