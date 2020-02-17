class NewsController < ApplicationController
  def index
    @search = News.ransack(params[:search])
    @news = @search.result.includes(:category).to_a.uniq
    @title = params[:search].nil? ? 'FRESHLY SQUEEZED NEWS' : 'SEARCH RESULTS'
  end
end
