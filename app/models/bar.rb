class Bar < ApplicationRecord
  has_many :suggestions
  has_many :drinks
  has_many :dating, through: :suggestions

  has_one_attached :photo

  validates :address, :name, presence: true
  validates :rating, inclusion: { in: 0.0..5.0 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
