# frozen_string_literal: true

class TagsController < ApplicationController
  def show
    @tag = Tag.friendly.find(params[:id])
    @results = @tag.news.page(params[:page]).per(9)
    @news = @results.each_slice(3).to_a
  end
end
