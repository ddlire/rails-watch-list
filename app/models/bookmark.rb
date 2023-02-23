class Bookmark < ApplicationRecord
  belongs_to :movie, required: true
  belongs_to :list, required: true

  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6 }
end
