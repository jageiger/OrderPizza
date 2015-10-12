class CreateModifiers < ActiveRecord::Migration
  def change
    create_table :modifiers do |t|
      t.string :name
      t.string :alt_name
      t.float :price
      t.boolean :use_extras

      t.timestamps
    end
  end
end
