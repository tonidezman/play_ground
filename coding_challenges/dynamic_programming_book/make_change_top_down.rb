require 'securerandom'
# Top to bottom solution for getting the change
class ChangeMaker
  attr_accessor :memoize, :min_coins

  def initialize
    @memoize = {}
    @min_coins = Float::INFINITY
  end

  def calculate(coins, cash, counter = 0) # rubocop:disable all
    return if cash < 0
    if cash.zero? && counter < min_coins
      self.min_coins = counter
    end

    return memoize[coins] if memoize[coins]

    coins.each do |coin|
      remainder = cash - coin
      if remainder >= 0
        calculate(coins, remainder, counter += 1)
      end
    end
  end
end

coins = [10, 6, 1]
change_maker = ChangeMaker.new
change_maker.calculate(coins, 11)
puts change_maker.min_coins
