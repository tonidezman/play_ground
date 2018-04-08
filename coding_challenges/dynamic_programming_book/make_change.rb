# class for counting how many coins for certain number of cash
class Casher
  attr_reader :coins, :cash
  attr_accessor :min_coins

  def initialize(coins, cash)
    @coins = coins.sort { |a, b| b - a }
    @cash = cash
    @min_coins = Float::INFINITY #rubocop:disable all
  end

  def count_change
    _count_change(coins, cash)
    puts min_coins
  end

  def _count_change(coins, current_cash, coin_counter = 0)
    if current_cash.zero? && coin_counter < min_coins
      self.min_coins = coin_counter
    elsif current_cash < 0
      return
    end

    return coin_counter if current_cash.zero?
    return Float::INFINITY if current_cash < 0

    coins.reverse.each do |coin|
      _count_change(coins, current_cash - coin, coin_counter += 1)
    end
  end
end

coins = [1, 5, 10, 25]
puts Casher.new(coins, 6).count_change
