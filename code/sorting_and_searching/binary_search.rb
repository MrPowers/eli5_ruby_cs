#def binary_search(list, item)
  #first = 0
  #last = list.length - 1
  #while first <= last
    #midpoint = (first + last) / 2
    #if list[midpoint] == item
      #return true
    #else
      #if item < list[midpoint]
        #last = midpoint-1
      #else
        #first = midpoint+1
      #end
    #end
  #end
  #false
#end

#testlist = [0, 1, 2, 8, 13, 17, 19, 32, 42]
#p binary_search(testlist, 13)
#p binary_search(testlist, 15)

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
p binary_search(testlist, 3)
p binary_search(testlist, 13)

