class HomeController < ApplicationController
  
  def index
    @admin_news = News.new
  end

  def news
    @admin_news = News.all
  end

  def show
   @admin_news = News.find(params[:id])
  end

  
  private

  def news_params
    params.require(:news).permit(:title, :text)
  end
end
