class Dating < ApplicationRecord
  has_many :participants
  has_many :suggestions
  PREFERENCES = ['Bière', 'Vin', 'Cocktail', 'Soft']
  PRICE_RANGES = ['€', '€€', '€€€', '€€€€']
  ARRONDISSEMENTS = ['75001', '75002', '75003', '75004', '75005', '75006', '75007', '75008', '75009','75010', '75011', '75012', '75013', '75014', '75015', '75016', '75017', '75018', '75019', '75020']
  belongs_to :user
  validates :preference, :price_range, :arrondissement, presence: true

  validates :preference, inclusion: { in: PREFERENCES }
  validates :price_range, inclusion: { in: PRICE_RANGES }
  validates :arrondissement, inclusion: { in: ARRONDISSEMENTS }
end
