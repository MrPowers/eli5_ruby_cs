# Stacks

A stack is a ordered collection of items with a top and a base.  Items are always added or removed from the top of the stack in a last-in-first-out manner (LIFO).  In the following stack, the "History" book is added first, then "Music", "Physics", "Calculus", and finally "Python".  The "Python" book was the last item that was added to the stack and would be the first item removed from the stack (last-in-first-out).

![books](https://github.com/MrPowers/eli5_ruby_cs/blob/master/pictures/stack/books.png)

A stack is an array and can be modeled as follows:

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

Stacks are very simple data structures.  Items can be added to the top or taken off of the top, that's it!


