class LandingController < ApplicationController

  def index
    @news = News.all.desc('_id').limit(3)
  end

end