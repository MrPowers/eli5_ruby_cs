# Insertion Sort

The insertion sort algorithm maintains an unsorted and sorted portion of a list.  For each pass, an element from the unsorted portion of the list is inserted into the appropriate position of the sorted portion of the list.  After `n - 1` passes, the list is sorted.

[This video](https://www.youtube.com/watch?v=DFG-XuyPYUQ) provides an awesome overview of the insertion sort algorithm.

Here is some pseudocode to show how the selection sort algorithm works. The `|` character is use to visually differentiate the sorted and unsorted portion of the list.

```
# starting list
23 | 42 4 16 8 15

# insert 42 into the sorted portion
23 42 | 4 16 8 15

# insert 4 into the sorted portion
4 23 42 | 16 8 15

# insert 16 into the sorted portion
4 16 23 42 | 8 15

# insert 8 into the sorted portion
4 8 16 23 42 | 15

# insert 15 into the sorted portion
4 8 15 16 23 42 |
```

The list has `n` elements and requires `n - 1` passes to be sorted.

For each pass, the insertion iterates over the sorted portion of the list from right to left and shifts the elements to the right until the element that is being inserted is greater than the next element on the left.  The position to insert the element will be empty because all of the greater elements have already been shifted to the right.

## Code

In the following code, the `i` variable tracks the number of passes that are made to sort the list.  After `k` passes, the first `k + 1` elements in the list will be sorted.  For each of the `n - 1` passes, the algorithm will insert the value in the list.

```ruby
def insertion_sort(list)
  1.upto(list.length - 1) do |i|
    value = list[i]
    j = i - 1
    while j >= 0 && list[j] > value
      list[j+1] = list[j]
      j -= 1
    end
    list[j+1] = value
  end
  list
end

list = [23, 42, 4, 16, 8, 15]
insertion_sort(list)
p list # => [4, 8, 15, 16, 23, 42]
```

We can add a `puts` statements to the algorithm to inspect the list after each sorting pass.

```ruby
def insertion_sort(list)
  1.upto(list.length - 1) do |i|
    value = list[i]
    j = i - 1
    while j >= 0 && list[j] > value
      list[j+1] = list[j]
      j -= 1
    end
    list[j+1] = value
    p list
  end
  list
end

list = [23, 42, 4, 16, 8, 15]
insertion_sort(list)

# printed output
[23, 42, 4, 16, 8, 15]
[4, 23, 42, 16, 8, 15]
[4, 16, 23, 42, 8, 15]
[4, 8, 16, 23, 42, 15]
[4, 8, 15, 16, 23, 42]
```

A list with `6` elements takes `5` passes to be sorted - `n - 1` passes.  `42` is the first value to be sorted and does not have to move.  `4` is the next value to be sorted and requires both `42` and `23` to be shifted one position to the right.  This process continues until the entire list is sorted.

## Computation Time

The insertion sort algorithm is solved with a loop within a loop, which is characteristic of `O(n**2)` algorithms.  [This video](https://youtu.be/DFG-XuyPYUQ?t=6m15s) explains why this algorithm is `O(n**2)`.

