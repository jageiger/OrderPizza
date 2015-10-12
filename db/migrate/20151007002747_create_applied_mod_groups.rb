class CreateAppliedModGroups < ActiveRecord::Migration
  def change
    create_table :applied_mod_groups do |t|
      t.integer :modifier_group_id
      t.integer :item_id

      t.timestamps
    end
  end
end
