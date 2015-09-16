class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :value, null: false
      t.integer :judge_id, null: false
      t.integer :attempt_id, null: false

      t.timestamps null: false
    end
  end
end
