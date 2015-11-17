class AddHueToSelectedModifiers < ActiveRecord::Migration
  def change
    add_column :selected_modifiers, :hue, :string
  end
end
