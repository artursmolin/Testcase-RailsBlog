# frozen_string_literal: true

# rubocop:disable Style/FormatStringToken

class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  after_create :create_indicator

  validates :title, presence: true

  has_many :news

  def create_indicator
    color1 = format('%06x', (rand * 0xffffff))
    color2 = format('%06x', (rand * 0xffffff))
    update!(indicator: "linear-gradient(to right,##{color1},##{color2}")
  end
end

# rubocop:enable Style/FormatStringToken
