class Adult < ActiveRecord::Base

  def self.articles
    secret_key = ENV['secret_key']
  
    @articles = HTTParty.get("http://api.usatoday.com/open/articles?keyword=cyberbullying&api_key=#{secret_key}").parsed_response["rss"]["channel"]["item"]
  end

end
