class ChangeLoginTableAgain < ActiveRecord::Migration[5.2]
  def change
    rename_column :logins, :logins, :date
  end
end
