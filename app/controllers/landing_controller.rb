#encoding: utf-8
class LandingController < ApplicationController

  def index
    @news = News.all.limit(3)
    @from = ''
    @submit_text = 'Отправить заявку'

    @categories = Category.all
  end

end