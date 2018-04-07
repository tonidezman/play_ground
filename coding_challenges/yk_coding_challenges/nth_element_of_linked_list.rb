class Node
  attr_accessor :value, :next

  def initialize(value)
    self.value = value
    self.next = nil
  end
end

def nth_from_end(head, num)
  pointer_fast = head
  pointer_slow = head
  current_num = num

  while current_num >= 1
    return nil if pointer_fast == nil
    pointer_fast = pointer_fast.next
    current_num -= 1
  end

  while pointer_fast != nil
    pointer_fast = pointer_fast.next
    pointer_slow = pointer_slow.next
  end

  pointer_slow.value
end

node_1 = Node.new(1)
node_2 = Node.new(2)
node_3 = Node.new(3)
node_4 = Node.new(4)
node_5 = Node.new(5)

node_1.next = node_2
node_2.next = node_3
node_3.next = node_4
node_4.next = node_5

puts nth_from_end(node_1, 6).inspect