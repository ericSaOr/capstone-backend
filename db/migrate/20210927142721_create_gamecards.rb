class CreateGamecards < ActiveRecord::Migration[6.1]
  def change
    create_table :gamecards do |t|
      t.string :name
      t.str :image
      t.integer :user_id
      t.integer :gamecard_id
      t.string :level_data
      t.string :note

      t.timestamps
    end
  end
end
