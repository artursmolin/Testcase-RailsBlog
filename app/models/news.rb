# frozen_string_literal: true

class News < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true, uniqueness: true
  validates :admin_id, presence: true
  validates :category_id, presence: true

  belongs_to :category
  belongs_to :admin
  has_many :tags

  scope :recent, -> { order('created_at desc') }
end
