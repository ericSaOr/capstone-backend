class AddColumnNameToGamecard < ActiveRecord::Migration[6.1]
  def change
    add_column :gamecards, :game_id, :integer
  end
end
