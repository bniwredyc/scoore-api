class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :athlete_id, null: false
      t.integer :contest_id, null: false

      t.timestamps null: false
    end
  end
end
