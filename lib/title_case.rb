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

  def new_titlecase
    the_string = self.split
    the_string.at(0).capitalize!
    the_string.last.capitalize!
    the_string.each do |word|
      unless @@small_words.include?(word)
        word.capitalize!
      end
    end
    the_string.join(" ")
  end

end
