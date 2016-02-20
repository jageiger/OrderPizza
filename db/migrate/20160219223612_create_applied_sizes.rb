class CreateAppliedSizes < ActiveRecord::Migration
  def change
    create_table :applied_sizes do |t|
      t.integer :item_id
      t.integer :item_size_id

      t.timestamps
    end
  end
end
