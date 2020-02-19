# frozen_string_literal: true

require 'administrate/base_dashboard'

class NewsTagDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    news: Field::BelongsTo,
    tag: Field::BelongsTo,
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    news
    tag
    id
    created_at
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    news
    tag
    id
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    news
    tag
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
