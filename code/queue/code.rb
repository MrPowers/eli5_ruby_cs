class MyQueue

  attr_reader :items

  def initialize(items: [])
    @items = items
  end

  def enqueue(item)
    items.push(item)
  end

  def dequeue
    items.shift
  end

end


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

radar = Deque.new(items: "radar".split(""))
cat = Deque.new(items: "cat".split(""))

def palindrome?(deque)
  while deque.items.length > 1
    if deque.remove_front != deque.remove_rear
      return false
    end
  end
  true
end

