class String

  @@small_words = [
                  "a", "an", "and", "as", "at",
                  "but", "by",
                  "en",
                  "for", "from",
                  "if", "in",
                  "nor",
                  "of", "on", "or",
                  "per",
                  "the", "to",
                  "v", "via", "vs",
                  "with"
                  ]

  def titlecase
    string = self.split
    string.first.capitalize!
    string.last.capitalize!
    string.each do |word|
      unless @@small_words.include?(word)
        word.capitalize!
      end
    end
    string.join(" ")
  end

  def titlecase!
    self.replace self.titlecase
  end

end
