# frozen_string_literal: true

class NewsTag < ApplicationRecord
  belongs_to :news
  belongs_to :tag
end
