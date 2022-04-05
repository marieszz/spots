class RemoveColumnsFromDating < ActiveRecord::Migration[6.1]
  def change
    remove_column :datings, :price_range, :string
    remove_column :datings, :drinks, :string
  end
end
