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
