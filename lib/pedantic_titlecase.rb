require "yaml"

class String

  @@guides = YAML::load_file(File.join(__dir__, "../guides.yml"))

  def titlecase(guide = "default")
    @exceptions = @@guides[guide]
    subsentence = false

    string = self.split

    string.each do |word|
      # Skip over exceptions
      unless word =~ /[A-Z]/ || @exceptions.include?(word)
        word.capitalize!
      end

      # Downcase exceptions that were incorrectly input capitalized
      if @exceptions.include?(word.downcase)
        word.downcase!
      end

      # Handle the first word of a subsentence
      if subsentence == true
        word.capitalize!
        subsentence = false
      end
      if word =~ /[:.;?!]/
        subsentence = true
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
