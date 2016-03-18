class AddAttributesToSelectedModifiers < ActiveRecord::Migration
  def change
    add_column :selected_modifiers, :xpos, :integer
    add_column :selected_modifiers, :ypos, :integer
    add_column :selected_modifiers, :scrx, :integer
    add_column :selected_modifiers, :scry, :integer
    add_column :selected_modifiers, :rapper, :integer
  end
end
