class AddAppliedModGroupToSelectedModifiers < ActiveRecord::Migration
  def change
    add_column :selected_modifiers, :applied_mod_group_id, :integer
  end
end
