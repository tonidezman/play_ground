# this class calculates fibonacci number
class Fib
  attr_accessor :memoize
  def initialize
    @memoize = {}
  end

  def calculate(num)
    return num if num < 2
    return memoize[num] if memoize[num]
    calculated_fibonacci = calculate(num - 1) + calculate(num - 2)
    memoize[num] = calculated_fibonacci
    calculated_fibonacci
  end
end
