class AddColumnEmailokToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :agreed_to_mails, :boolean
  end
end
