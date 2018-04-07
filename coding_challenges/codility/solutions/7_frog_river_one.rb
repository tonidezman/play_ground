require 'set'

def solution(x, a)
  levees = Set.new(1..x)
  is_frog_levee_visited = false

  a.each_with_index do |num, indx|
    if num == x
      is_frog_levee_visited = true
    end

    levees.delete(num)

    if levees.empty? && is_frog_levee_visited
      return indx
    end
  end

  -1
end