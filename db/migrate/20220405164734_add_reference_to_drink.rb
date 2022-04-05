class AddReferenceToDrink < ActiveRecord::Migration[6.1]
  def change
    add_reference :drinks, :bar, null: false, foreign_key: true
  end
end
