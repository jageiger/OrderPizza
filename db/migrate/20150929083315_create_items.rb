class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :stock
      t.string :name
      t.string :alt_name
      t.text :description
      t.float :price
      t.float :cost
      t.integer :quantity
      t.string :product_code
      t.integer :SKU
      t.float :extras_price
      t.boolean :fancy_interface
      t.integer :interface

      t.timestamps null: false
    end
  end
end
