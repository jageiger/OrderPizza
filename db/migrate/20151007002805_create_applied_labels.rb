class CreateAppliedLabels < ActiveRecord::Migration
  def change
    create_table :applied_labels do |t|
      t.integer :item_id
      t.integer :label_id
      t.boolean :daily_special
      t.integer :day

      t.timestamps
    end
  end
end
