class News < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :admin_id, presence: true
  validates :category_id, presence: true

  belongs_to :category
  belongs_to :admin
  has_many :tags

  scope :recent, -> { order(:created_at) }
end
