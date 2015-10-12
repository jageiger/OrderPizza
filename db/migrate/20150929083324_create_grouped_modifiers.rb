class CreateGroupedModifiers < ActiveRecord::Migration
  def change
    create_table :grouped_modifiers do |t|
      t.integer :modifier_group_id
      t.integer :modifier_id

      t.timestamps null: false
    end
  end
end
