# Binary Search

Here is an overview of the binary search algorithm [from Wikipedia](https://en.wikipedia.org/wiki/Binary_search_algorithm): "The binary search algorithm begins by comparing the target value to the value of the middle element of the sorted array. If the target value is equal to the middle element's value, then the position is returned and the search is finished. If the target value is less than the middle element's value, then the search continues on the lower half of the array; or if the target value is greater than the middle element's value, then the search continues on the upper half of the array. This process continues, eliminating half of the elements, and comparing the target value to the value of the middle element of the remaining elements - until the target value is either found (and its associated element position is returned), or until the entire array has been searched (and "not found" is returned)."

Here is an iterative binary search algorithm:

```ruby
def binary_search(list, item)
  first = 0
  last = list.length - 1
  while first <= last
    midpoint = (first + last) / 2
    if list[midpoint] == item
      return true
    else
      if item < list[midpoint]
        last = midpoint-1
      else
        first = midpoint+1
      end
    end
  end
  false
end
```

The `binary_search` algorithm returns true if the item is in the list and false otherwise.

```ruby
testlist = [0, 1, 2, 8, 13, 17, 19, 32, 42]
binary_search(testlist, 13) # => true
binary_search(testlist, 15) # => false
```

The `binary_search` algorithm can also be written recursively.  When the item is not found in the list, the binary search algorithm can be reapplied to the left or right side of the list.  If the list is continuously split until there are no more elemenets, then the item is not in the list.

```ruby
def binary_search(list, item)
  return false if list.length == 0
  midpoint = list.length / 2
  return true if list[midpoint] == item
  if item < list[midpoint]
    binary_search(list[0...midpoint],item)
  else
    binary_search(list[midpoint+1...-1],item)
  end
end

testlist = [0, 1, 2, 8, 13, 17, 19, 32, 42]
binary_search(testlist, 3) # => false
binary_search(testlist, 13) # => true
```

See [this section](http://interactivepython.org/runestone/static/pythonds/SortSearch/TheBinarySearch.html#analysis-of-binary-search) for a detailed description of how to compute the performance of this algorithm.  In short, the list is cut in half each iteration and this results in `O(log(n))` performance.
