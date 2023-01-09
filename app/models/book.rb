class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :delete_all
  has_many :ratings, dependent: :delete_all
  has_one_attached :image
  has_one_attached :file

  validates :image, :file, :title, :author, :description, presence: true

  scope :has_image, -> { joins(:image_attachment) }
  scope :missing_image, -> { where.missing(:image_attachment) }

end
