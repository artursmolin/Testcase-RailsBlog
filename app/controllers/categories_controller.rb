# frozen_string_literal: true

class CategoriesController < ApplicationController
  def show
    @category = Category.friendly.find(params[:id].parameterize)
    @news = @category.news.each_slice(3).to_a
  end
end
