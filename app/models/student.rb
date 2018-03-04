class Student < ApplicationRecord
  validates :name, :grad_year, presence: true
end
