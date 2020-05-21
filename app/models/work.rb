class Work < ApplicationRecord
  mount_uploader :image, WorkImageUploader
  belongs_to :director

  acts_as_list

  scope :by_position, ->{ order(position: :asc) }

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :release, presence: true
  validates :starring, presence: true

  def related_works
    director.works.where.not(id: id)
  end
end
