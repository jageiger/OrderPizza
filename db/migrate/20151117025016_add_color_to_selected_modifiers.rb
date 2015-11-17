class AddColorToSelectedModifiers < ActiveRecord::Migration
  def change
    add_column :selected_modifiers, :color, :string
  end
end
