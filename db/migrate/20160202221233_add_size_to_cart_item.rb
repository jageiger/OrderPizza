class AddSizeToCartItem < ActiveRecord::Migration
  def change
    add_column :cart_items, :size_id, :integer
  end
end
