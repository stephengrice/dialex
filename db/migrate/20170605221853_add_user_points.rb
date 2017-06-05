class AddUserPoints < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :points, :integer, default: 0, null: false
  end
end
