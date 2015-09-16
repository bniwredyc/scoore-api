class AddContestsEventJudges < ActiveRecord::Migration
  def change
    create_table :contests_event_judges, id: false, force: true do |t|
      t.integer :contest_id, null: false
      t.integer :event_judge_id, null: false
    end
  end
end
