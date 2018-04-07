def fib(num)
  return 1 if [1, 2].include? num
  return num if num < 2
  fibonacci(num - 1) + fibonacci(num - 2)
end
