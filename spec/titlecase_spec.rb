require 'spec_helper'

describe String do

  describe "#titlecase" do
    it "will properly titlecase a string" do
      string = "dog walks into a wall"
      expect(string.titlecase).to eq "Dog Walks Into a Wall"
    end

    it "will always capitalize the first word of a title" do
      string = "the quick brown fox jumps over the lazy dog"
      expect(string.titlecase).to eq "The Quick Brown Fox Jumps Over the Lazy Dog"
    end

    it "will always capitalize the last word of a title" do
      string = "there is nothing to be afraid of"
      expect(string.titlecase).to eq "There Is Nothing to Be Afraid Of"
    end
  end

  describe "#titlecase!" do
    it "will titlecase and modify the receiver" do
      string = "there is nothing to be afraid of"
      string.titlecase!
      expect(string).to eq "There Is Nothing to Be Afraid Of"
    end
  end

end
