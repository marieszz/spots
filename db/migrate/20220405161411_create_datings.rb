class CreateDatings < ActiveRecord::Migration[6.1]
  def change
    create_table :datings do |t|
      t.string :price_range
      t.string :drinks

      t.timestamps
    end
  end
end
