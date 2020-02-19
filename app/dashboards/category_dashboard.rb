# frozen_string_literal: true

require 'administrate/base_dashboard'

class CategoryDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    indicator: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    id
    title
    indicator
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    id
    title
    indicator
    created_at
    updated_at
    slug
  ].freeze

  FORM_ATTRIBUTES = %i[
    title
    indicator
    slug
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
