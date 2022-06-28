class AddNextRoundtoGames < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :next_round, :integer
  end
end
