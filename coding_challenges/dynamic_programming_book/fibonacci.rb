def fib(num)
  memoize = {}

  return 1 if [1, 2].include? num
  return num if num < 2
  return memoize[num] && puts("pulling from cache #{num}") if memoize[num]
  calculated_fibonacci = fibonacci(num - 1) + fibonacci(num - 2)
  memoize[num] = calculated_fibonacci
  puts("calculating and caching => #{num}")
  calculated_fibonacci
end
