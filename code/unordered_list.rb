class Node

  attr_reader :data, :next_node

  def initialize(data:, next_node: nil)
    @data = data
    @next_node = next_node
  end

end

class UnorderedList

  attr_reader :head

  def initialize(head:)
    @head = head
  end

  def size
    current = head
    count = 0
    until current.nil?
      count += 1
      current = current.next_node
    end
    count
  end

end

n3 = Node.new(data: :happy)
n2 = Node.new(data: 99, next_node: n3)
n1 = Node.new(data: "cat", next_node: n2)
list = UnorderedList.new(head: n1)
p list.size
