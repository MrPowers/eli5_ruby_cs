class Stack < Array

  def pretty_print
    reverse.each do |e|
      puts e
    end
  end

end
