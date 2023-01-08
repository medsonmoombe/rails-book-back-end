class Book < ApplicationRecord
  belongs_to :user
  
  has_one_attached :image
  has_one_attached :file

  validates :image, :file, presence: true

  scope :has_image, -> { joins(:image_attachment) }
  scope :missing_image, -> { where.missing(:image_attachment) }

end
