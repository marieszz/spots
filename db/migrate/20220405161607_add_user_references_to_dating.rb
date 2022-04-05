class AddUserReferencesToDating < ActiveRecord::Migration[6.1]
  def change
    add_reference :datings, :user, null: false, foreign_key: true
  end
end
