class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  after_create :create_indicator

  validates :title, presence: true

  has_many :news

  def create_indicator
    color_1 = "%06x" % (rand * 0xffffff)
    color_2 = "%06x" % (rand * 0xffffff)
    self.update!(indicator: "linear-gradient(to right,##{color_1},##{color_2}")
  end
end
