def max_profit(arr)
  if arr.length < 2
    raise ArgumentError.new("There have to be at least two values")
  end

  current_buy = arr[0]
  current_sell = arr[1]
  current_profit = current_sell - current_buy

# arr = [21, 12, 11, 9, 6, 3]
  i = 2
  while i < arr.length
    prev_price = arr[i-1]
    if prev_price < current_buy
      current_buy = prev_price
    end
    sell_price = arr[i]
    current_profit = [current_profit, sell_price -current_buy].max
    i += 1
  end

  current_profit
end

# arr = [8, 5, 12, 9, 19, 1]
arr = [21, 12, 11, 9, 6, 3]
p max_profit(arr)
