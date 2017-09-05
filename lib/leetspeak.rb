class String
  def leetspeak()
    self.gsub!("a", "4")
    self.gsub!("A", "4")
    self.gsub!("t", "7")
    self.gsub!("T", "7")
    self.gsub!("I", "1")
    self.gsub!("o", "0")
    self.gsub!("O", "0")
    self.gsub!("e", "3")
    self.gsub!("E", "3")
    if !(self[0] == "s") | !(self[0] == "S")
      temp = self[1..-1]
      temp.gsub!("s", "z")
      temp.gsub!("S", "z")
      self.replace(self[0] + temp)
    else
      self.gsub!("s", "z")
      self.gsub!("S", "z")
    end
    self
  end
end
puts "sassafrass".leetspeak()
