class AddAttributesToModifiers < ActiveRecord::Migration
  def change
    add_column :modifiers, :rotate, :boolean
    add_column :modifiers, :density, :float
    add_column :modifiers, :scale_range_low, :float
    add_column :modifiers, :scale_range_high, :float
    add_column :modifiers, :file, :string
    add_column :modifiers, :file_width, :integer
    add_column :modifiers, :file_height, :integer
    add_column :modifiers, :grid_x, :integer
    add_column :modifiers, :grid_y, :integer
  end
end
