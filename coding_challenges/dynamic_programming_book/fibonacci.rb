
# this class calculates fibonacci number
class Fib
  attr_accessor :memoize
  def initialize
    @memoize = {}
  end

  def calculate(num)
    return num if num < 2
    if memoize[num]
      puts("pulling from cache #{num}")
      return memoize[num]
    end
    calculated_fibonacci = calculate(num - 1) + calculate(num - 2)
    memoize[num] = calculated_fibonacci
    puts("calculating and caching => #{num}")
    calculated_fibonacci
  end
end
