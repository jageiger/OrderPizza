class CreateModifierGroups < ActiveRecord::Migration
  def change
    create_table :modifier_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
