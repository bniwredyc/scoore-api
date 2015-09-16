class CreateEventJudges < ActiveRecord::Migration
  def change
    create_table :event_judges do |t|
      t.integer :event_id, null: false
      t.integer :judge_id, null: false
      t.string :pin, null: false
      t.timestamps null: false
    end
  end
end
