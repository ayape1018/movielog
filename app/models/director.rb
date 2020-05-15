class Director < ApplicationRecord
  scope :by_id, ->{ order(id: :asc) }

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :birthplace, presence: true

end
