#encoding: utf-8
class NewsController < ApplicationController

  def index
    @news = News.paginate page: params[:page], per_page: 5
  end

  def show
    @news = News.find params[:id]
  end

  private
  def news_params
    params.require(:news).permit :title, :preview, :text, :date, :pic
  end

end