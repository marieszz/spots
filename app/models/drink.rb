class Drink < ApplicationRecord
  belongs_to :bar

  validates :type, :price_range, presence: true
end
