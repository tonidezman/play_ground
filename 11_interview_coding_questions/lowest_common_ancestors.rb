class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    self.value = value
    self.left = nil
    self.right = nil
  end
end

def lowest_common_ancestor(head, value_a, value_b)

  is_found_a = false
  ancestors_a = []
  ancestors_b = []
  is_found_b = false
  tree_stack = []
  tree_stack << [[head.value], head]

  while tree_stack.any?
    break if is_found_a && is_found_b

    ancestors, node = tree_stack.pop()

    if node.value == value_a
      is_found_a = true
      ancestors_a = ancestors
    end

    if node.value == value_b
      is_found_b
      ancestors_b = ancestors
    end

    if node.left
      ancestors = ([ancestors] + [node.left.value]).flatten
      tree_stack << [ancestors, node.left]
    end

    if node.right
      ancestors = ([ancestors] + [node.right.value]).flatten
      tree_stack << [ancestors, node.right]
    end
  end

  puts ancestors_a.inspect
  puts ancestors_b.inspect
  puts '----'
  find_common_ancestor(ancestors_a, ancestors_b)
end

def find_common_ancestor(ancestors_a, ancestors_b)
  pointer = 1
  found_last_ancestor = false

  until found_last_ancestor
    if ancestors_a[pointer] != ancestors_b[pointer]
      return ancestors_a[pointer-1]
    else
      pointer += 1
    end
  end
end

thirty = Node.new(30)
twenty = Node.new(20)
eighteen = Node.new(18)
fifteen = Node.new(15)
ten = Node.new(10)
nine = Node.new(9)
eight = Node.new(8)
five = Node.new(5)
one = Node.new(1)

ten.left = five
ten.right = twenty
twenty.right = thirty
twenty.left = fifteen
fifteen.right = eighteen
five.left = one
five.right = eight
eight.right = nine

puts lowest_common_ancestor(ten, 9, 1)
