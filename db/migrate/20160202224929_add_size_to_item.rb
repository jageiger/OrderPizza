class AddSizeToItem < ActiveRecord::Migration
  def change
    add_column :items, :size_id, :integer
  end
end
