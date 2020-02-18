# frozen_string_literal: true

class Tag < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true, uniqueness: true

  has_many :news_tags
  has_many :news, through: :news_tags
end
