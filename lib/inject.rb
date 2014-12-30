class Array

  def jake_inject(argument = false, symbol = false, &block)
    return jake_inject(&argument) if argument.is_a? Symbol
    return jake_inject(argument, &symbol) if symbol
    argument ? memo = argument : memo = self[0] && self.delete_at(0)
    self.each { |item| memo = block.call memo, item }
    return memo
  end
  
end