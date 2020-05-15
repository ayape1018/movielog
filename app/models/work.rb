class Work < ApplicationRecord
  belongs_to :director

  scope :by_id, ->{ order(id: :asc) }

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :release, presence: true
  validates :starring, presence: true
end
