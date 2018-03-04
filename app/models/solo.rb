class Solo < ApplicationRecord
has_many :entries, dependent: :destroy
has_many :students, through: :entries, source: :student
  validates :title, :composer, :PML, presence: true
end
