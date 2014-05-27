require 'spec_helper'

describe ChuckNorris do
  it { should respond_to :categories }
  it { should respond_to :first_name }
  it { should respond_to :last_name}
  describe "#random" do
    it "returns string" do
      expect(ChuckNorris.random.class).to eq String 
    end
  end
  before do
    @chuck = ChuckNorris.new
  end
  describe "#new" do
    it "initializes new instance" do
      @chuck.should be_an_instance_of ChuckNorris
    end
    it "initializes category" do
      @chuck.categories.should be_kind_of Array
    end
    it "creates empty categories" do
      @chuck.categories.should be_empty
    end
  end
  describe "#personal" do
    it "returns string" do
      @chuck.personal("firstname","lastname").should be_kind_of String 
    end
  end
  describe "#jokes" do
    it "returns string" do
      @chuck.jokes.should be_kind_of Array 
    end
    it "returns exact number of jokes" do
      expect(@chuck.jokes(10).count).to eq 10 
    end
  end
  describe "#joke" do
    it "returns string" do
      @chuck.joke(3).should be_kind_of String 
    end
  end
  describe "#get_categories" do
    before do
      @chuck.get_categories
    end
    it "updates categories" do
      @chuck.categories.should_not be_empty 
    end
  end
end