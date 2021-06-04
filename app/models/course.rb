class Course < ApplicationRecord
  extend FriendlyId

  has_rich_text :description
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 5 }

  friendly_id :title, use: :slugged
end
