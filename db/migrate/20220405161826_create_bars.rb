class CreateBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bars do |t|
      t.string :drinks
      t.string :price_range
      t.string :address
      t.string :name
      t.float :longitude
      t.float :latitude
      t.integer :rating

      t.timestamps
    end
  end
end
