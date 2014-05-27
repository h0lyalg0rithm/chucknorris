require 'unirest'
require 'uri'
class ChuckNorris
  attr_accessor :categories, :first_name, :last_name
  def initialize
    @categories = []
  end
  def self.random
    response = Unirest.get "http://api.icndb.com/jokes/random"
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
    begin
      body = request "http://api.icndb.com/jokes/random?firstName=#{firstname}&lastName=#{lastname}"
      return body["value"]["joke"]
    rescue ChuckNorris::UnsuccessfulError => e
      puts e
    end
  end
  def jokes(num=4)
    jokes = []
    begin
      body = request "http://api.icndb.com/jokes/random/#{num}"
      body["value"].each do |x|
        jokes.push x["joke"]
      end
      return jokes
    rescue ChuckNorris::UnsuccessfulError => e
      puts e
    end
  end
  def joke(num)
    begin
      body = request "http://api.icndb.com/jokes/#{num}"
      if body["type"] == "success"
        return body["value"]["joke"]
      end
    rescue ChuckNorris::UnsuccessfulError => e
      puts e
    end
  end
  def get_categories    
    begin
      body = request "http://api.icndb.com/categories"
      body["value"].each do |x|
        @categories << x
      end
      return @categories
    rescue ChuckNorris::UnsuccessfulError => e
      puts e
    end
  end

  private
  def request(path)
    response = Unirest.get(URI.escape(path))
    body = response.body
    raise ChuckNorris::UnsuccessfulError if body['value'] == "value"
    body
  end
  class UnsuccessfulError < StandardError
  end
end