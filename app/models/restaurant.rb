class Restaurant < ApplicationRecord
  validates :name, :description, presence: true
  has_many :reviews
  belongs_to :user
end
