class AddPreventIncestToModifierGroups < ActiveRecord::Migration
  def change
    add_column :modifier_groups, :prevent_incest, :boolean
  end
end
