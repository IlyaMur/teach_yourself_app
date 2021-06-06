class Course < ApplicationRecord
  LANGUAGES = %w[English Polish Russian].freeze

  extend FriendlyId

  has_rich_text :description
  belongs_to :user

  validates :title, :short_description, :language, :price, :level, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  friendly_id :title, use: :slugged
end
