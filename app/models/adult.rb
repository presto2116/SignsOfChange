class Adult < ActiveRecord::Base
  attr_accessor :link, :title

  def self.articles
    api_key = "umtf9ebhqf3njtshvcwt6bu6"
    search = "cyber bullying"
    @articles = HTTParty.get("http://api.usatoday.com/open/articles?keyword=cyberbully&api_key=#{api_key}").parsed_response["rss"]["channel"]["item"]
  end

end
