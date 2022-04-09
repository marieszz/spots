class AddColumnToBars < ActiveRecord::Migration[6.1]
  def change
    add_column :bars, :beer, :boolean
    add_column :bars, :wine, :boolean
    add_column :bars, :cocktail, :boolean
    add_column :bars, :soft, :boolean
    add_column :bars, :price_range, :string
  end
end
