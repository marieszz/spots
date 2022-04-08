class Bar < ApplicationRecord
  has_many :suggestions
  has_many :drinks

  validates :address, :name, presence: true
  validates :rating, inclusion: { in: 0.0..5.0 }
end
