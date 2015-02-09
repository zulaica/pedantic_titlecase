require "yaml"

class String

  @@guides = YAML::load_file(File.join(__dir__, "../guides.yml"))

  def titlecase(guide = "default")
    @exceptions = @@guides[guide]

    string = self.split

    string.each do |word|
      if @exceptions.include?(word.downcase)
        word.downcase!
      end
      unless word =~ /[A-Z]/ || @exceptions.include?(word)
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
