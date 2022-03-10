require 'pry'

class String

  def sentence?
   self.end_with?(".")
  end

  def question?
   self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sent = 0 
    punct = [".", "?", "!"]
     self.chars.each.with_index do |char, index|
      if punct.include?(char) && !punct.include?(self[index + 1])
      sent += 1
    end
  end
    sent
  end
end