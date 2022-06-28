class AddGamesIdToUserGame < ActiveRecord::Migration[7.0]
  def change
    add_column :user_games, :game_id, :integer
  end
end
