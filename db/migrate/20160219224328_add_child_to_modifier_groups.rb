class AddChildToModifierGroups < ActiveRecord::Migration
  def change
    add_column :modifier_groups, :child, :boolean
    add_column :modifier_groups, :parent_modifier_group_id, :integer
    add_column :modifier_groups, :prepend_name, :string
    add_column :modifier_groups, :display_name, :string
    add_column :modifier_groups, :add_price, :float
    add_column :modifier_groups, :mult_price, :float
    
    add_column :modifier_groups, :exclusive, :boolean
    add_column :modifier_groups, :max_num_of_modifiers, :integer
    add_column :modifier_groups, :interface_position, :integer
  end
end
