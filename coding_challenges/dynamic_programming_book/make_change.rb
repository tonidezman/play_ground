COINS = [10, 6, 1]
$current_min = Float::INFINITY

def make_change(cash, coin_counter = 0) #rubocop:disable all
  if cash.zero?
    if coin_counter < $current_min
      $current_min = coin_counter
    end
    return 0
  end

  COINS.each do |coin|
    remaining_coins = cash - coin
    remaining_coins >= 0 && make_change(remaining_coins, coin_counter += 1)
  end
end

make_change(11)
puts $current_min