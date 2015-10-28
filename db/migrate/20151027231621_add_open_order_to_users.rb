class AddOpenOrderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :open_order, :integer
  end
end
