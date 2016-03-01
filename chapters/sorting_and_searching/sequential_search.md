# Sequential Search

A search looks through a collection of items and returns `true` if the item is included in the selection and `false` otherwise.  A sequential search starts at the first item in a list and sequentially iterates over all the items to check if the item is included in the list.

```ruby
def sequential_search(list, item)
  list.each do |i|
    return true if i == item
  end
  false
end
```

The `sequential_search` algorithm's performance will vary depending on the position of the item in the list.  If the item is in the first position of the list, the loop will only iterate one time.  If the item is in the last position of the list or is not in the list at all, the loop will iterate `item.length` or `n` times.  Big O analysis typically focuses on the worst case scenario so this algorithm is `O(n) = n`.

