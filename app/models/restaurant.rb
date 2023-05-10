class Restaurant < ApplicationRecord
  # associations
  has_many :reviews # creates a method -> restaurant.reviews
  # has_many :reviews, dependent: :destroy
  # dependent: if we destroy the restaurant, it will also delete all of its reviews
  # validations
  # validates :column_name, actual_validation
  validates :name, presence: true
end
