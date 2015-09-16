class AddAthletesEvents < ActiveRecord::Migration
  def change
    create_table :athletes_events, id: false, force: true do |t|
      t.integer :athlete_id
      t.integer :event_id
    end
  end
end
