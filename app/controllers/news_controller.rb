# frozen_string_literal: true

class NewsController < ApplicationController
  before_action :find_news, only: :show
  before_action :find_all_news, only: %i[show index]

  def index
    @search = News.ransack(params[:q])
    @news = if params[:q]
              @search.result.includes(:category).to_a.uniq.each_slice(3).to_a
            else
              @search.result.includes(:category).limit(9).to_a.uniq.each_slice(3).to_a
            end
    @title = find_title(params[:q])
  end

  def show
    @category_title = @news.category.title
    @indicator = @news.category.indicator
    @created_at = @news.created_at.strftime('%F')
    @tags = @news.tags
    @asset = @news.asset.present? ? "assets/#{@news.asset}" : 'http://localhost:3000/assets/1.jpg'
    @recent_news = [News.recent.limit(4)]
  end

  def find_news
    @news = News.friendly.find(params[:id])
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
end
