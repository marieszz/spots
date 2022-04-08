class ChangeRatingTypeInBar < ActiveRecord::Migration[6.1]
  def change
    change_column :bars, :rating, :float
  end
end
