class AddColumnNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :cred_points, :integer
  end
end
