# frozen_string_literal: true

require 'administrate/base_dashboard'

class AdminUserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    news: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    surname: Field::String,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    news
    id
    name
    surname
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    news
    id
    name
    surname
    email
    encrypted_password
    reset_password_token
    reset_password_sent_at
    remember_created_at
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    news
    name
    surname
    email
    encrypted_password
    reset_password_token
    reset_password_sent_at
    remember_created_at
  ].freeze

  COLLECTION_FILTERS = {}.freeze
end
