class AddInterfaceColumnToModifiers < ActiveRecord::Migration
  def change
    add_column :modifiers, :interface_column, :integer
  end
end
