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

