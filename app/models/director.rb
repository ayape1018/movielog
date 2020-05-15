class Director < ApplicationRecord
  has_many :works

  scope :by_id, ->{ order(id: :asc) }

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :birthplace, presence: true

end
