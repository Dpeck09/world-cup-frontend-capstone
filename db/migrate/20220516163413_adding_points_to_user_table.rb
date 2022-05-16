class AddingPointsToUserTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :point_total, :integer
  end
end
