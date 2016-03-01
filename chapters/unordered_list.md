# Unordered List

An unordered list can be implemented by constructing a list of nodes that are linked (aka a linked list).  The head of the list is the first node and each subsequent node contains a link to the following node.  Let's start by defining `Node` and `UnorderedList` classes to model a linked list.

```ruby
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

end
```

We can construct the `"cat" => 99 => :happy` list with the following code:

```ruby
n3 = Node.new(data: :happy)
n2 = Node.new(data: 99, next_node: n3)
n1 = Node.new(data: "cat", next_node: n2)
list = UnorderedList.new(head: n1)
```

We can add a method to the `UnorderedList` class that traverses the linked list and returns the size of the list.

```ruby
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
p list.size # => 3
```

Let's add an `include?()` method to see if an element is included in a linked list.

```ruby
def include?(data)
  current = head
  until current.nil?
    return true if current.data == data
    current = current.next_node
  end
  false
end
```

The `include()` method (a method of the `UnorderedList` class), traverses the linked list and returns true if the data is found in the list.

```ruby
list.include?(:happy) # => true
list.include?(99) # => true
list.include?("cat") # => true
list.include?("fat") # => false
```

Let's add a `remove()` method to delete a node from the linked list.  Removing an item from a linked list is a bit trickier because the `next_node` attribute of the previous node needs to be updated, so it's not left pointing to a node that has been deleted.  When the first node of a linked list is removed, the `@head` instance variable needs to be updated.

```ruby
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
```

