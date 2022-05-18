require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    count = 0
    str = self.split(/[.?!]/)
    count = str.length
    if str.include?("")
      count -= 1
    end
    count
    # binding.pry
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences