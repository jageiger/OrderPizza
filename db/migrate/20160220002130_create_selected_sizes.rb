class CreateSelectedSizes < ActiveRecord::Migration
  def change
    create_table :selected_sizes do |t|
      t.integer :cart_item_id
      t.integer :item_size_id

      t.timestamps
    end
  end
end
