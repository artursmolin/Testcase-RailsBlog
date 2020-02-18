class NewsController < ApplicationController
  before_action :find_news, only: :show

  def index
    @search = News.ransack(params[:q])
    @news = @search.result.includes(:category).to_a.uniq.each_slice(3).to_a
    @title = if params[:q].nil? || params[:q]['title_cont'].blank?
               'FRESHLY SQUEEZED NEWS'
             else
               'SEARCH RESULTS'
             end
  end

  def show
    @category_title = @news.category.title
    @created_at = @news.created_at.strftime("%F")
    @tags = @news.tags
    @asset = @news.asset.present? ? "assets/#{@news.asset}" : 'http://localhost:3000/assets/1.jpg'
    @recent_news = [News.recent.limit(4)]
  end

  def find_news
    @news = News.friendly.find(params[:id].parameterize)
  end
end
