def sum_of_n(n)
  sum = 0
  (1..n).each do |num|
    sum += num
  end
  sum
end

p sum_of_n(10)
