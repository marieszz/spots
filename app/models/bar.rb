class Bar < ApplicationRecord
  has_many :suggestions
  has_many :drinks

  validates :address, :name, :rating, :longitude, :latitude, :price_range, presence: true
  validates :rating, inclusion: { in: [0..5] }
end
