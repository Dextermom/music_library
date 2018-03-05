class Student < ApplicationRecord
  has_many :entries, dependent: :destroy
  has_many :solos, through: :entries, source: :solo
  has_many :groups, dependent: :destroy
  has_many :ensembles, through: :groups, source: :ensemble
  validates :name, :grad_year, presence: true
end
