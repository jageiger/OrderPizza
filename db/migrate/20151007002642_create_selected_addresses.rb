class CreateSelectedAddresses < ActiveRecord::Migration
  def change
    create_table :selected_addresses do |t|
      t.integer :address_id
      t.integer :user_id
      t.integer :order_id

      t.timestamps
    end
  end
end
