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

    string.each do |word|
      if @@small_words.include?(word.downcase)
        word.downcase!
      end
      unless word =~ /[A-Z]/ || @@small_words.include?(word)
        word.capitalize!
      end
    end

    unless string.first =~ /[A-Z]/
      string.first.capitalize!
    end

    unless string.last =~ /[A-Z]/
      string.last.capitalize!
    end

    string.join(" ")
  end

  def titlecase!
    replace titlecase
  end

end
