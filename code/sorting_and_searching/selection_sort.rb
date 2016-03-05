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


class Array
  def selectionsort!
    for i in 0..length-2
      min_idx = i
      for j in (i+1)...length
        min_idx = j  if self[j] < self[min_idx]
      end
      self[i], self[min_idx] = self[min_idx], self[i]
    end
    self
  end
end
