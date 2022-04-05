class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :type
      t.string :price_range

      t.timestamps
    end
  end
end
