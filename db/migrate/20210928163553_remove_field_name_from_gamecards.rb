class RemoveFieldNameFromGamecards < ActiveRecord::Migration[6.1]
  def change
    remove_column :gamecards, :gamecard_id, :integer
  end
end
