class CreateSelectedModifiers < ActiveRecord::Migration
  def change
    create_table :selected_modifiers do |t|
      t.integer :item_id
      t.integer :cart_item_id
      t.integer :modifier_id

      t.timestamps
    end
  end
end
