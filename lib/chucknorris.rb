require 'unirest'
require 'uri'
class ChuckNorris
  attr_accessor :categories, :first_name, :last_name
  def initialize
    @categories = Set.new
  end
  def self.random
    response = Unirest.get("http://api.icndb.com/jokes/random")
    begin
      body = response.body
      if body["type"] == "success"
        return body["value"]["joke"]
      end
    rescue
      puts "Error occured"
    end
  end
  def personal(firstname,lastname)
    response = Unirest.get(URI.escape("http://api.icndb.com/jokes/random?firstName=#{firstname}&lastName=#{lastname}"))
    begin
      body = response.body
      if body["type"] == "success"
        return body["value"]["joke"]
      end
    rescue
      puts "Error occured"
    end
  end
  def jokes(num=4)
    jokes = []
    response = Unirest.get(URI.escape("http://api.icndb.com/jokes/random/#{num}"))
    begin
      body = response.body
      if body["type"] == "success"
        body["value"].each do |x|
          jokes.push x["jokes"]
        end
      end
      return jokes
    rescue Exception => e
      puts e
    end
  end
  def joke(num)
    response = Unirest.get(URI.escape("http://api.icndb.com/jokes/#{num}"))
    begin
      body = response.body
      if body["type"] == "success"
        return body["value"]["joke"]
      end
    rescue Exception => e
      puts e
    end
  end
  def get_categories    
    response = Unirest.get(URI.escape("http://api.icndb.com/categories"))
    begin
      body = response.body
      if body["type"] == "success"
        body["value"].each do |x|
          @categories << x
        end
      end
      return @categories
    rescue Exception => e
      puts e
    end
  end
end