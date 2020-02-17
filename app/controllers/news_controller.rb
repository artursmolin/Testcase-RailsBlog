class NewsController < ApplicationController
  def index
    @news = News.includes(:category).ransack(params[:search]).result
  end
end
