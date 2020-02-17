class Tag < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :news_id, presence: true

  has_many :news
end
