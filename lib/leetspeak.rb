class String
  def leetspeak()
    self.gsub!("o", "0")
    self.gsub!("O", "0")
    self.gsub!("e", "3")
    self.gsub!("E", "3")
    self
  end
end
