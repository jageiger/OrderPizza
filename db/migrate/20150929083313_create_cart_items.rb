class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :user_id
      t.integer :order_id
      t.integer :item_id
      t.float :price
      t.integer :quantity
      t.text :special_instructions

      t.timestamps null: false
    end
  end
end
