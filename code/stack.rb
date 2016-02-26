class Stack < Array

  def pretty_print
    reverse.each do |e|
      puts e
    end
  end

end

require 'pry'

def reverse(str)
  stack = str.split("")
  result = ""
  while !stack.empty?
    result += stack.pop
  end
  result
end

p reverse("abcd")
