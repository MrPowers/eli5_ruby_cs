# Deque

A deque is a double ended queue meaning items can be added or removed from either the front or the rear of the queue.  A deque can behave like a stack, a queue, or both :)

Here is how a deque can be implemented in Ruby:

```ruby
class Deque

  attr_reader :items

  def initialize(items: [])
    @items = items
  end

  def add_rear(item)
    items.push(item)
  end

  def remove_rear
    items.pop
  end

  def add_front(item)
    items.unshift(item)
  end

  def remove_front
    items.shift
  end

end
```

The front of the queue is the beginning of the `items` array and the rear is the end of the array.  This code shows a deque in action.

```ruby
d = Deque.new
d.add_rear("cool") # items => ["cool"]
d.add_rear("nice") # items => ["cool", "nice"]
d.add_front(44) # items => [44, "cool", "nice"]
d.remove_front # items => ["cool", "nice"]
d.remove_rear # items => ["cool"]
```

The `Deque` class can be used to determine if a string is a palindrome.  A palindrome is a string that can be reads the same forwards and backwards - "radar" and "level" are good examples.

```ruby
def palindrome?(deque)
  while deque.items.length > 1
    if deque.remove_front != deque.remove_rear
      return false
    end
  end
  true
end

radar = Deque.new(items: "radar".split(""))
palindrome?(radar) # => true
cat = Deque.new(items: "cat".split(""))
palindrome?(cat) # => false
```

