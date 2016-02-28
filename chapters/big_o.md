# Big O

Big O notation summarizes the relationship between the input to a function and how long it takes the function to run.

The following method's computation time is constant regardless of the input size.

```ruby
def constant(n)
  n = n + 2
  n
end
```

The `constant()` method simply reassigns the `n` variable to `n + 2`.  This simplified analysis will look at the number of variable assignments to benchmark the computational complexity of a problem.  The `constant()` function will only require one variable assignment regardless of the size of `n`, so this method will always run quickly.

The following `linear()` method has a computational complexity that increases linearly with the input size.

```ruby
def linear(n)
  counter = 1
  (1..n).each do
    counter = counter + 1
  end
  counter
end
```

The `linear()` method starts with one variable assignment (`counter = 1`) and then has another `n` variable assignments.  For example, `linear(4)` will have one variable assignment to start, followed by 4 variable assignments in the loop, for a total of 5 variable assignments.  The number of variable assignments in the `linear()` method can be described generically with this function: T(n) = n + 1.

The counter variable in the `linear()` function tracks the number of variable assignments:

```ruby
linear(4) # => 5
linear(10) # => 11
```

The following `quadratic()` method has a computational complexity that increases quadratically with the input size.

```ruby
def quadratic(n)
  counter = 1
  upper = n * n
  (1..upper).each do
    counter = counter + 1
  end
  counter
end
```

The `quadratic()` method starts with one variable assignment (`counter = 1`) and then has another `n * n` variable assignments.  For example, `linear(4)` will have one variable assignment to start, followed by 16 variable assignments in the loop, for a total of 17 variable assignments.  The number of variable assignments in the `linear()` method can be described generically with this function: T(n) = n * n + 1.

```ruby
quadratic(4) # => 17
quadratic(10) # => 101
```

Big O notation simplifies the T(n) function to only include the part of the computation complexity function that grows the fastest as the input size grows.  The Big O notation for the function T(n) = (5 * n * n) + (27 * n) + 1005 is O(n * n) because that is the portion of the function that grows the fastest as `n` grows.  The constant 1005 and `27 * n` portions are relatively insignificant relative to the `n * n` portion of the function when `n` is large.

The constant `1` is a relatively insignificant portion of the T(n) = n * n + 1 function for the `quadratic()` method.  The Big O notation for the `quadratic()` method is O(n * n).

The following `exponential()` method has a computational complexity that increases exponentially with the input size.

```ruby
def exponential(n)
  counter = 1
  upper = 2 ** n
  (1..upper).each do
    counter = counter + 1
  end
  counter
end
```

The computation complexity function for the `exponential()` method is T(n) = 2 ** n + 1.  The Big O notation for this function is O(2 ** n).

The computational complexity for the `exponential()` method grows rapidly as the input size increases.

```ruby
exponential(4) # => 17
exponential(10) # => 1025
```

The computational complexity of a method does not always increase uniformly with the size of n.

```ruby
def inconsistent(n)
  counter = 1
  if n.odd?
    counter = counter + 1
  else
    (1..n).each do
      counter = counter + 1
    end
  end
  counter
end
```

The computational complexity of `inconsistent()` increases linearly if the input is even and is constant if the input is odd.

```ruby
inconsistent(50) # => 51
inconsistent(51) # => 2
inconsistent(52) # => 53
inconsistent(53) # => 2
```

The `inconsistent()` algorithm should be analyzed in terms of best case, worst case, and average case performance as Big O notation alone cannot fully explain the algorithm's performance.

