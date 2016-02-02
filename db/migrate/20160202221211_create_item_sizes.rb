class CreateItemSizes < ActiveRecord::Migration
  def change
    create_table :item_sizes do |t|
      t.string :name
      t.float :price
      t.float :extras
      t.integer :row_order
      t.integer :item_id

      t.timestamps
    end
  end
end
