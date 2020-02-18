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

  def show; end

  def find_news
    News.friendly.find(params[:id])
  end
end
