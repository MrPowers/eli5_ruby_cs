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
