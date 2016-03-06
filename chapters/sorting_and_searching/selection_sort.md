# Selection Sort

"The selection sort algorithm divides the input list into two parts: the sublist of items already sorted and the sublist of items remaining to be sorted that occupy the rest of the list. Initially, the sorted sublist is empty and the unsorted sublist is the entire input list. For `n - 1` passes, the algorithm finds the smallest element in the unsorted sublist and moves it to the rightmost portion of the sorted sublist" - paraphrased from [Wikipedia](https://en.wikipedia.org/wiki/Selection_sort).

[This video](https://www.youtube.com/watch?v=f8hXR_Hvybo) and [this video](https://www.youtube.com/watch?v=GUDLRan2DWM) provide fantastic descriptions of the selection sort algorithm.

Here is some pseudocode to show how the selection sort algorithm works.  The `|` character is use to visually differentiate the sorted and unsorted portion of the list.

```
# starting list
| 23 42 4 16 8 15

# minimum unsorted element is 4
# swap 4 and 23
4 | 42 23 16 8 15

# minimum unsorted element is 8
# swap 8 and 42
4 8 | 23 16 42 15

# minimum unsorted element is 15
# swap 15 and 23
4 8 15 | 16 42 23

# minimum unsorted element is 16
# 16 is already in the correct position
4 8 15 16 | 42 23

# minimum unsorted element is 23
# swap 23 and 42

4 8 15 16 23 | 42
# we're done :)
# the algorithm requires n - 1 passes
```

## Solution

The Ruby algorithm makes `n - 1` passes.  For each pass, the `min_idx` of the unsorted portion of the list is calculated.  The smallest item in the unsorted portion of the list is then swapped into the rightmost portion of the sorted portion of the list.

```ruby
def selection_sort(list)
  (0..list.length-1).each do |i|
    min_idx = i
    (i+1..list.length-1).each do |j|
      if list[j] < list[min_idx]
        min_idx = j
      end
    end
    if min_idx != i
      list[min_idx], list[i] = list[i], list[min_idx]
    end
  end
end

list = [54, 26, 93, 17, 77, 31, 44, 55, 20]
selection_sort(list)
p list # => [17, 20, 26, 31, 44, 54, 55, 77, 93]
```

## Computation Time

The selection sort algorithm takes `n - 1` passes.  For each pass, we need to iterate over all the elements in the unsorted portion of the list to find the minimum value.  On average, we'll need to iterate over `n / 2` elements to find the minimum unsorted element.  Therefore, the complexity of the algorithm is `O(n**2)`.

Notice that the solution for this problem requires a nested loop - nested loops often have `O(n**2)` complexity.

## Todo

Rewrite the selection sort algorith so the unsorted portion of the list is on the left and the sorted portion is on the right.  The algorithm should take the biggest number from the unsorted portion and append it to the leftmost position of the sorted portion.  This has the same runtime and it's just a different implementation to understand the algorithm better.

