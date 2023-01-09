class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates_presence_of :book

  def self.ratings
    rate = Rating.all
    return  rate
  end
end
