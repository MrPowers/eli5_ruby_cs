# Stacks

A stack is a ordered collection of items with a top and a base.  Items can be added to the top of the stack or removed from the top of the stack.  The last item added to the stack is the first item that will be removed which is called last-in-first-out (LIFO).

In the following stack, the "History" book is added first, then "Music", "Physics", "Calculus", and finally "Python".

![books](https://github.com/MrPowers/eli5_ruby_cs/blob/master/pictures/stack/books.png)

The "History" book is at the base of the stack and the "Python" book is at the top.

A stack can be modelled as an array (the top of the stack is the end of the array):

```ruby
class Stack < Array

  def pretty_print
    reverse.each do |e|
      puts e
    end
  end

end
```

Here is how the code can be used to build up the stack of books:

```ruby
s = Stack.new
s.push("History")
s.push("Music")
s.push("Physics")
s.pretty_print
# Physics
# Music
# History
```

The `push()` method is used to add books to the top of the stack.  The `pop()` method is used to take books off the top of the stack.

```ruby
s.pop # => "Physics"
s.pretty_print
# Music
# History
```

Stacks are simple data structures.  Items can be added to the top or taken off of the top, that's it!

