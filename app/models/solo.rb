class Solo < ApplicationRecord
  validates :title, :composer, :PML, presence: true
end
