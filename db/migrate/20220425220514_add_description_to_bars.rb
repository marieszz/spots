class AddDescriptionToBars < ActiveRecord::Migration[6.1]
  def change
    add_column :bars, :description, :text
  end
end
