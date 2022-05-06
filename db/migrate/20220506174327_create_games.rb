class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :home
      t.string :away
      t.string :winner
      t.integer :game_number
      t.string :points

      t.timestamps
    end
  end
end
