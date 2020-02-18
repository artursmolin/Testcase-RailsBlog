# frozen_string_literal: true

class TagsController < ApplicationController
  def show
    @tag = Tag.friendly.find(params[:id])
    @news = @tag.news.each_slice(3).to_a
  end
end
