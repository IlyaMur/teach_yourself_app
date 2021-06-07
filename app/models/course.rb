class Course < ApplicationRecord
  LANGUAGES = %i[English Polish Russian].freeze
  LEVELS = %i[Beginner Intermediate Advanced].freeze

  extend FriendlyId
  include PublicActivity::Model
  tracked owner: Proc.new { |controller, model| controller.current_user }

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
