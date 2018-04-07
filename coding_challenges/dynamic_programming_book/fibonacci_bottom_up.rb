# bottom up calculating fibonacci number
class Fib
  attr_accessor :memoize

  def initialize
    @memoize = [0, 1]
  end

  def calculate(wanted_fib) #rubocop:disable all
    return wanted_fib if wanted_fib < 2
    return memoize[wanted_fib] if memoize[wanted_fib]

    len = memoize.length - 1
    current_fib, prev_fib, next_fib = [len, memoize[len-1], memoize[len]] # rubocop:disable all
    while current_fib < wanted_fib
      temp = next_fib
      next_fib = prev_fib + next_fib
      memoize[current_fib + 1] = next_fib
      prev_fib = temp
      current_fib += 1
    end
    next_fib
  end
end
