# frozen_string_literal: true

require 'administrate/base_dashboard'

class TagDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    news_tags: Field::HasMany,
    news: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    news
    id
    title
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    news
    id
    title
    created_at
    updated_at
    slug
  ].freeze

  FORM_ATTRIBUTES = %i[
    news
    title
    slug
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
