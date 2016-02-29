# Queues

A queue is an ordered collection of items with a front and a rear.  Items are added to the rear of the queue and taken from the front of the queue.

Let's define a simple `MyQueue` with an `enqueue()` method to add items to the queue and a `dequeue()` method to remove items from the queue.

```ruby
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

queue = MyQueue.new
queue.enqueue("boo")
queue.enqueue("42")
queue.enqueue(true)
queue.dequeue # => "boo"
queue.dequeue # => 42
```

Suppose we have a list of names and would like to shift all the names two spaces to the left.  The names at the end of the array should be shifted to the beginning.  Here is the desired input and output:

```ruby
names = ["hal", "matt", "bob", "sam", "joe"]
# desired output: ["bob", "sam", "joe", "hal", "matt"]
```

We can leverage the `MyQueue` class to get the desired output.

```ruby
queue = MyQueue.new(items: ["hal", "matt", "bob", "sam", "joe"])
2.times do
  name = queue.dequeue
  queue.enqueue(name)
end
queue.items # => ["bob", "sam", "joe", "hal", "matt"]
```

