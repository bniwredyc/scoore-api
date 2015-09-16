class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :participation_id, null: false

      t.timestamps null: false
    end
  end
end
