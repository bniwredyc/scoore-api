class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.integer  :performance_id, null: false
      t.integer  :group_id
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.timestamps null: false
    end
  end
end
