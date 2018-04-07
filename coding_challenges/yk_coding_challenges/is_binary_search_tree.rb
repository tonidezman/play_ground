class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    self.value = value
    self.left = nil
    self.right = nil
  end
end

def binary_search_tree?(node)
  upper_bound = Float::INFINITY
  lower_bound = -Float::INFINITY

  tree_stack = []
  tree_stack << [node, lower_bound, upper_bound]

  while tree_stack.any?
    node, lower_bound, upper_bound = tree_stack.pop()
    puts("node: #{node.value}, lower_bound: #{lower_bound}, upper_bound: #{upper_bound}")

    if node.value <= upper_bound && node.value >= lower_bound
      if node.left
        tree_stack.push([node.left, lower_bound, node.value])
      end
      if node.right
        tree_stack.push([node.right, node.value, upper_bound])
      end
    else
      return false
    end
  end
  true
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

puts binary_search_tree?(ten)