class NewsController < ApplicationController
  def index
    @news = News.all.recent
  end
end
