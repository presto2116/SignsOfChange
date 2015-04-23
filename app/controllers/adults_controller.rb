gem 'httparty'

class AdultsController < ApplicationController

  def index
    @article = Adult.article
    @headline = Adult.headline
  end

end
