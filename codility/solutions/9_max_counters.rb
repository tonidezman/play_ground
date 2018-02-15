# First Solution
def solution(n, arr)
  current_max = 0
  counters = Array.new(n) { 0 }

  arr.each do |pointer|
    if pointer == (n + 1)
      counters.map!{ current_max }
    else
      indx = pointer -1
      increased_num = counters[indx] + 1
      counters[indx] = increased_num

      if increased_num > current_max
        current_max = increased_num
      end
    end
  end
  counters
end

# Time-Space complexity
# Time O(m*n)
# Space O(n)

# Second Solution
def solution(n, arr)
  current_cash = 0
  current_cash_num = 0
  current_max = 0
  initial_value = 0
  counters = {}
  1.upto(n) do |pointer|
    counters[pointer] = { current_cash: current_cash, value: initial_value }
  end

  arr.each do |pointer|
    reset_counters_to_max_value = n + 1
    if pointer == reset_counters_to_max_value
      current_cash += 1
      current_cash_num = current_max
    else
      if counters[pointer][:current_cash] == current_cash
        current_increment_value = counters[pointer][:value] + 1
      else
        counters[pointer][:current_cash] = current_cash
        current_increment_value = current_cash_num + 1
      end
      counters[pointer][:value] = current_increment_value
      if current_increment_value > current_max
        current_max = current_increment_value
      end
    end
  end

  arr_counters = []
  counters.each do |_, counter|
    if counter[:current_cash] == current_cash
      arr_counters << counter[:value]
    else
      arr_counters << current_cash_num
    end
  end
  arr_counters
end

# Time-Space complexity
# Time O(n+m)
# Space O(n)