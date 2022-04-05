class RemoveColumnsFromBar < ActiveRecord::Migration[6.1]
  def change
    remove_column :bars, :price_range, :string
    remove_column :bars, :drinks, :string
  end
end
