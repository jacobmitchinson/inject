class Array 

  def jake_inject(argument = false, symbol = false, &block)
    copy = self.dup 
    symbol ? jake_inject(symbol.to_proc) : false
    argument ? memo = argument : memo = copy[0] && copy.delete_at(0)
    copy.each { |item| memo = yield memo, item }
    return memo
  end
  
end