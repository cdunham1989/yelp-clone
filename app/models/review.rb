class Review < ApplicationRecord
  validates :rating, presence: true
  belongs_to :restaurant
end
