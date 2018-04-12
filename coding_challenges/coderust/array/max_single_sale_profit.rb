def max_profit(arr)
  if arr.length < 2
    raise ArgumentError.new("There have to be at least two values")
  end

  current_buy = arr[0]
  current_sell = arr[1]
  current_profit = current_sell - current_buy

  i = 1
  while i < arr.length
    current_price = arr[i]
    current_profit = [current_profit, current_price - current_buy].max
    current_buy = [current_buy, current_price].min
    i += 1
  end

  current_profit
end

arr = [8, 5, 12, 9, 19, 1]
# arr = [21, 12, 11, 9, 6, 3]
p max_profit(arr)
