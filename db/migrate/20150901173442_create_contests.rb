class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.integer :event_id, null: false
      t.integer :discipline_id, null: false
      t.datetime :start_datetime
      t.string :type
      t.boolean :is_started, default: false, null: false
      t.boolean :is_ended, default: false, null: false

      t.timestamps null: false
    end
  end
end
