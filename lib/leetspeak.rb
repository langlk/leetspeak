class String
  def leetspeak()
    split_sentence = self.split()
    split_sentence.each do |word|
      word.gsub!("a", "4")
      word.gsub!("A", "4")
      word.gsub!("t", "7")
      word.gsub!("T", "7")
      word.gsub!("I", "1")
      word.gsub!("o", "0")
      word.gsub!("O", "0")
      word.gsub!("e", "3")
      word.gsub!("E", "3")
      if !(word[0] == "s") | !(word[0] == "S")
        temp = word[1..-1]
        temp.gsub!("s", "z")
        temp.gsub!("S", "z")
        word.replace(word[0] + temp)
      else
        word.gsub!("s", "z")
        word.gsub!("S", "z")
      end
    end
    split_sentence.join(" ")
  end
end
