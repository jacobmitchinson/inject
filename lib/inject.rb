class Array 

  def jake_inject(argument = false, symbol = false)
    copy = self.dup
    memo_array = Array.new

    if argument && symbol
      symbol = symbol.to_proc
      jake_inject(argument)
    elsif argument && symbol == false
      copy.each_with_index do |item, index|
        if index == 0
          memo_array << (yield argument, item)
        else
          memo_array.unshift (yield memo_array.first, item)
        end
      end
    else 
      copy.each_with_index do |item, index|
        if index == 0
          memo_array << (yield item, copy[index + 1])
        elsif index == 1
        
        else
          memo_array.unshift (yield memo_array.first, item)
        end
      end
    end

    return memo_array.first
  end

end