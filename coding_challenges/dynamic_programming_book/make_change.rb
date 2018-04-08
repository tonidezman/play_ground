COINS = [10, 6, 1]
$current_min = Float::INFINITY
$recursive_counter = 0

def make_change(cash, coin_counter = 0) #rubocop:disable all
  $recursive_counter += 1

  if cash.zero?
    if coin_counter < $current_min
      $current_min = coin_counter
    end
    return 0
  end

  COINS.each do |coin|
    next if coin_counter > $current_min
    remaining_coins = cash - coin
    remaining_coins >= 0 && make_change(remaining_coins, coin_counter += 1)
  end
end

cash = 11
make_change(cash)
puts "minimum number for cash: #{cash} ==> #{$current_min}"
puts "recurive calls counter ==> #{$recursive_counter}"
