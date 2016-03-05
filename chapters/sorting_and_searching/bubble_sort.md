# Bubble Sort

The bubble sort algorithm sorts (or "orders") an unordered list of numbers in ascending order.  `bubble_sort([4, 55, 1])` will return `[1, 4, 55]`.

"Bubble sort is a simple sorting algorithm that repeatedly steps through the list to be sorted, compares each pair of adjacent items and swaps them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted. The algorithm, which is a comparison sort, is named for the way smaller elements "bubble" to the top of the list." - [Wikipedia](https://en.wikipedia.org/wiki/Bubble_sort)

[This video](https://www.youtube.com/watch?v=8Kp-8OGwphY) and [this video](https://www.youtube.com/watch?v=Jdtq5uKz-w4) provide awesome explanations of the algorithm.

After `k` passes of the bubble sort algorithm, the rightmost `k` elements will be in order.

The following example demonstrates that after two passes, the rightmost two elements are properly sorted.

```ruby
[6, 5, 4, 3, 2, 1] # starting list
[5, 4, 3, 2, 1, 6] # list after first pass
[4, 3, 2, 1, 5, 6] # list after second pass
```

Here is some ruby cody to bubble sort a list.

```ruby
def bubble_sort(list)
  (list.length - 1).downto(0).each do |i|
    (0...i).each do |j|
      if list[j] > list[j+1]
        tmp = list[j]
        list[j] = list[j+1]
        list[j+1] = tmp
      end
    end
  end
end

list = [54, 26, 93, 17, 77, 31, 44, 55, 20]
bubble_sort(list)
p list # => [17, 20, 26, 31, 44, 54, 55, 77, 93]
```

In the worst case scenario, the bubble sort algorithm will take `n - 1` passes and make `n` comparisons for each pass.  `n - 1 * n = n**2 - n` which has a worst case complexity of `O(n**2)`.

