class ChangeWinnerNameUserGames < ActiveRecord::Migration[7.0]
  def change
    rename_column :user_games, :winner, :user_pick
  end
end
