class LandingController < ApplicationController

  def index
    @news = News.all.limit(3)
  end

end