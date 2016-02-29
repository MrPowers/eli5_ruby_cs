# Big O Practice

This section explains the Big O function for some common algorithms.

## Checking if an array contains an element

The following function returns true if an array contains a certain element and false otherwise.

```ruby
def my_include?(arr, element)
  arr.each do |e|
    return true if e == element
  end
  false
end

my_include?([1, 2, 3], 1) # => true
my_include?([1, 2, 3], "bob") # => false
```

`my_include?([1, 2, 3], 1)` is an example of the best case scenario for this algorithm because the element is immediately found in the first posision, so the loop only iterates once.  `my_include?([1, 2, 3], "bob")` is an example of the worst case for this algorithm because the program has to iterate over every element in the array.

Big O notation uses the worst case scenario, which is iterating over every element in the array.  As the array grows bigger, there are more element to iterate over, and the computation time will increase linearly.  `O(n) = n`.

## Nested iteration

The following method uses a nested loop to find all the combinations in two arrays.

```ruby
def combinations(arr1, arr2)
  result = []
  arr1.each do |e1|
    arr2.each do |e2|
      result.push([e1, e2])
    end
  end
  result
end

combinations([1, 2], ['a', 'b']) # => [[1, "a"], [1, "b"], [2, "a"], [2, "b"]]
combinations([1, 2], ['a', 'b']).length # => 4
combinations([1, 2, 3], ['a', 'b', 'c']).length # => 9
combinations([1, 2, 3, 4], ['a', 'b', 'c', 'd']).length # => 16
```

The number of iterations for the `combinations()` method increases quadratically with the array lengths.  `number_of_iterations = length_of_arrays ** 2`.  The Big O notation for this method is `O(n) = n ** n`.

## Recursive Fibonacci

The Fibonacci number at a given portion of the sequence can be solved resursively as follows:

```ruby
def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1
  fibonacci(n - 1) + fibonacci(n - 2)
end
```

This algorithm is very inefficient and the computation time grows exponentially as `n` gets bigger.  Let's modify this algorithm, so we can easily count how many times the method is being called.

```ruby
def fib_counter(n)
  @count += 1
  return 0 if n == 0
  return 1 if n == 1
  fib_counter(n - 1) + fib_counter(n - 2)
end

@count = 0
fib_counter(4) # => 9
@count = 0
fib_counter(10) # => 177
@count = 0
fib_counter(20) # => 21891
```

It is a [bit complicated](http://stackoverflow.com/questions/360748/computational-complexity-of-fibonacci-sequence) to precisely calculate the Big O notation for the `fibonacci()` method.  The computation time is exponential and can be estimated to be `O(n) = 2 ** n`, which is incredibly slow.  This algorithm is so inefficient that even a small input `n = 100` would require about `1267650600228229401496703205376` calculations (e.g. `2 ** 100`).

