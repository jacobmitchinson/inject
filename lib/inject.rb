class Array 

  def jake_inject(argument = false, symbol = false)
    copy = self.dup 
    symbol = argument && argument = false if argument.is_a? Symbol
    return jake_inject(argument, &symbol) if symbol
    argument ? memo = argument : memo = copy[0] && copy.delete_at(0)
    copy.each { |item| memo = yield memo, item }
    return memo
  end
  
end