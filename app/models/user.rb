class User < ApplicationRecord
    has_many :books
    has_many :reviews, dependent: :delete_all
end
