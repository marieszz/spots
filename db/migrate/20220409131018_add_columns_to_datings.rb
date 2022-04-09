class AddColumnsToDatings < ActiveRecord::Migration[6.1]
  def change
    add_column :datings, :preference, :string
    add_column :datings, :price_range, :string

  end
end
