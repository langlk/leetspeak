class String
  def leetspeak()
    self.gsub!("e", "3")
    self.gsub!("E", "3")
    self
  end
end
