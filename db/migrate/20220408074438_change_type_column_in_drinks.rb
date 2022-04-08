class ChangeTypeColumnInDrinks < ActiveRecord::Migration[6.1]
  def change
    remove_column :drinks, :type, :string
    add_column :drinks, :drink, :string
  end
end
