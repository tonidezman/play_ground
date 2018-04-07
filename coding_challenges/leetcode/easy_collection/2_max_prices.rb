def max_profit(prices)
  return 0 if prices.length < 2

  stock = { value: nil, bought: false }
  profit = 0

  prices.each_with_index do |price, indx|
    next_price = prices[indx + 1]

    if stock[:bought]
      if next_price && price > next_price
        profit += price - stock[:value]
        stock[:value] = nil
        stock[:bought] = false
      end
    else
      if next_price && price < next_price
        stock[:value]  = price
        stock[:bought] = true
      end
    end
  end

  unless stock[:value].nil?
    profit += prices[-1] - stock[:value]
  end

  profit
end