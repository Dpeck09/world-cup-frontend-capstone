class CreateUserGames < ActiveRecord::Migration[7.0]
  def change
    create_table :user_games do |t|
      t.integer :game_number
      t.string :winner
      t.integer :user_id
      t.integer :points_awarded

      t.timestamps
    end
  end
end
