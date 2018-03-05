class Ensemble < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :students, through: :groups, source: :student
  validates :title, :composer, :voicing, :pml, presence: true
end
