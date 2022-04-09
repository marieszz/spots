class DropDrinks < ActiveRecord::Migration[6.1]
  def change
    drop_table :drinks
  end
end
