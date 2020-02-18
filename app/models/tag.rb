# frozen_string_literal: true

class Tag < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true, uniqueness: true
  validates :news_id, presence: true

  has_many :news
end
