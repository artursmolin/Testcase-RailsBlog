# frozen_string_literal: true

class NewsController < ApplicationController
  before_action :find_news, only: :show
  before_action :find_all_news, only: %i[show index]

  def index
    @search = News.ransack(params[:q])
    @page = paginate_news(@search, params)
    @news = @page.each_slice(3).to_a
    @title = find_title(params[:q])
  end

  def show
    @created_at = @news.created_at.strftime('%F')
    @asset = @news.asset.present? ? "assets/#{@news.asset}" : 'http://localhost:3000/assets/1.jpg'
    @recent_news = [News.recent.limit(4)]
  end

  def find_news
    @news = News.includes(:category, :tags).friendly.find(params[:id])
  end

  def find_all_news
    @categories = Category.all
  end

  def find_title(search_request)
    if search_request.nil? || search_request['title_cont'].blank?
      'FRESHLY SQUEEZED NEWS'
    else
      'SEARCH RESULTS'
    end
  end

  def paginate_news(search, params)
    search.result.page(params[:page]).per(9)
  end
end
