def fib(wanted_fib)
  return wanted_fib if wanted_fib < 2

  current_fib, prev_fib, next_fib = [2, 1, 1] # rubocop:disable all
  while current_fib < wanted_fib
    temp = next_fib
    next_fib = prev_fib + next_fib
    prev_fib = temp
    current_fib += 1
  end
  next_fib
end
