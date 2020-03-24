class ChangeUserTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :first_string, :first_name
  end
end
