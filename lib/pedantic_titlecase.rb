require "yaml"

class String

  @@guides = YAML::load_file(File.join(__dir__, "../guides.yml"))

  def titlecase(guide = "default")
    @exceptions = @@guides[guide]
    subsentence = false

    string = self.split

    string.each do |word|
      # Capitalize the word unless exceptions are met
      word.capitalize! unless word =~ /[A-Z]/ || @exceptions.include?(word)

      # Downcase exceptions that were incorrectly input capitalized
      word.downcase! if @exceptions.include?(word.downcase)

      # Handle the first word of a subsentence
      if subsentence == true
        word.capitalize!
        subsentence = false
      end
      if word =~ /[:.;?!]/
        subsentence = true
      end
    end

    # Capitalize the first and last word unless it already contains a capital letter
    # e.g iTunes should not have a capital I
    string.first.capitalize! unless string.first =~ /[A-Z]/
    string.last.capitalize! unless string.last =~ /[A-Z]/

    string.join(" ")
  end

  def titlecase!
    replace titlecase
  end

end
