  class AdultsController < ApplicationController

    def index
        @articles = Adult.articles
    end

  end
