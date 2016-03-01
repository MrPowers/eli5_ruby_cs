class Node

  attr_accessor :data, :next_node

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

  def include?(data)
    current = head
    until current.nil?
      return true if current.data == data
      current = current.next_node
    end
    false
  end

  def remove(data)
    current = head
    previous = nil
    until current.nil?
      if current.data == data
        if previous.nil?
          @head = current.next_node
          return
        end
        previous.next_node = current.next_node
        return
      end
      previous = current
      current = current.next_node
    end
    false
  end

  def print_list
    current = head
    r = []
    until current.nil?
      r.push(current.data)
      current = current.next_node
    end
    r
  end

end

n3 = Node.new(data: :happy)
n2 = Node.new(data: 99, next_node: n3)
n1 = Node.new(data: "cat", next_node: n2)
list = UnorderedList.new(head: n1)
p list.print_list
list.remove(:happy)
p list.print_list
