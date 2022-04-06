class Dating < ApplicationRecord
  has_many :participants
  has_many :suggestions

  belongs_to :user
end
