class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates_presence_of :book
  validates :comment,  presence: true
end
