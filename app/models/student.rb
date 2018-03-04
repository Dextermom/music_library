class Student < ApplicationRecord
  has_many :entries, dependent: :destroy
  has_many :solos, through: :entries, source: :solo
  validates :name, :grad_year, presence: true
end
