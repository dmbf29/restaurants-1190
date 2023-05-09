class Restaurant < ApplicationRecord
  # associations
  # validations
  # validates :column_name, actual_validation
  validates :name, presence: true
end
