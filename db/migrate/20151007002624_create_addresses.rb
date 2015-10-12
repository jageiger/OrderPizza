class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :address_one
      t.string :address_two
      t.string :address_three
      t.string :address_four
      t.string :zipcode
      t.boolean :apartment
      t.string :apartment_number
      t.string :building_number
      t.string :gate_code
      t.text :special_instructions

      t.timestamps
    end
  end
end
