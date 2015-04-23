class Adult < ActiveRecord::Base

  def self.article
    search = "cyber bullying"
    @article = HTTParty.get("http://api.usatoday.com/open/articles?tag=bullying&api_key=umtf9ebhqf3njtshvcwt6bu6").parsed_response["rss"]["channel"]["item"]

  end

  def self.headline
    search = "cyber bullying"
    @headline = HTTParty.get("http://api.usatoday.com/open/articles?tag=bullying&api_key=umtf9ebhqf3njtshvcwt6bu6").parsed_response["rss"]["channel"]["item"]["title"]
  end


end
