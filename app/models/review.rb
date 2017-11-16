class Review < ApplicationRecord
  validates :rating, presence: true,
                     numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }
  belongs_to :restaurant
  belongs_to :user
end
