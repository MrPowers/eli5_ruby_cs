def some_formula(n)
  5 * (n ** 2) + 27 * n + 1005
end

# constant
def constant(n)
  x = x + 2
  x
end

# O(n)
def linear(n)
  counter = 1
  (1..n).each do
    counter = counter + 1
  end
  counter
end

# quadratic
def quadratic(n)
  counter = 1
  upper = n * n
  (1..upper).each do
    counter = counter + 1
  end
  counter
end

# exponential
def exponential(n)
  counter = 1
  upper = 2 ** n
  (1..upper).each do
    counter = counter + 1
  end
  counter
end

# inconsistent
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

# my include (linear)
def my_include?(arr, element)
  arr.each do |e|
    return true if e == element
  end
  false
end

# combinations
def combinations(arr1, arr2)
  result = []
  arr1.each do |e1|
    arr2.each do |e2|
      result.push([e1, e2])
    end
  end
  result
end

combinations([1, 2], ['a', 'b'])
combinations([1, 2, 3], ['a', 'b', 'c'])

# fib
def fibonacci(n)
  return 0 if n == 0
  return 1 if n == 1
  fibonacci(n - 1) + fibonacci(n - 2)
end

def fib_counter(n)
  @count += 1
  return 0 if n == 0
  return 1 if n == 1
  fib_counter(n - 1) + fib_counter(n - 2)
end

result = []
(1..20).each do |n|
  @count = 0
  fib_counter(n)
  result.push([n, @count])
end

