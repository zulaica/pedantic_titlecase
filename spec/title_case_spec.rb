require 'spec_helper'

describe String do

  describe "#new_titlecase" do
    it "will properly titlecase things, breh" do
      new_string = "dog walks into a wall"
      expect(new_string.new_titlecase).to eq "Dog Walks Into a Wall"
    end

    it "will always capitalize the first word of a title" do
      new_string = "the quick brown fox jumps over the lazy dog"
      expect(new_string.new_titlecase).to eq "The Quick Brown Fox Jumps Over the Lazy Dog"
    end

    it "will always capitalize the last word of a title" do
      new_string = "there is nothing to be afraid of"
      expect(new_string.new_titlecase).to eq "There Is Nothing to Be Afraid Of"
    end
  end

end
