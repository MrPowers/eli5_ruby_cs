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

