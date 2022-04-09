class AddArrondissementToDating < ActiveRecord::Migration[6.1]
  def change
    add_column :datings, :arrondissement, :string
  end
end
