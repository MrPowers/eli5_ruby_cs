def sequential_search(list, item)
  list.each do |i|
    return true if i == item
  end
  false
end
