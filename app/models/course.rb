class Course < ApplicationRecord
  LANGUAGES = %i[English Polish Russian].freeze
  LEVELS = %i[Beginner Intermediate Advanced].freeze

  extend FriendlyId

  has_rich_text :description
  belongs_to :user

  validates :title, :short_description, :language, :price, :level, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  friendly_id :title, use: :slugged

  def self.languages
    LANGUAGES
  end
  def self.levels
    LEVELS
  end
end
