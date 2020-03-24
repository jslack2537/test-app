class ChangeLoginTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :logins, :date, :logins
  end
end
