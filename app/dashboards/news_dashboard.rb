# frozen_string_literal: true

require 'administrate/base_dashboard'

class NewsDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    category: Field::BelongsTo,
    admin_user: Field::BelongsTo,
    tags: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    asset: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    category
    admin_user
    tags
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    category
    admin_user
    tags
    id
    title
    description
    asset
    created_at
    updated_at
    slug
  ].freeze

  FORM_ATTRIBUTES = %i[
    category
    admin_user
    tags
    title
    description
    asset
    slug
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
