# frozen_string_literal: true

class CategoriesController < ApplicationController
  def show
    @category = Category.friendly.find(params[:id])
    @results = @category.news.page(params[:page]).per(9)
    @news = @results.each_slice(3).to_a
  end
end
