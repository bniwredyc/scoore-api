class AddIndexesToAthletesEventsTable < ActiveRecord::Migration
  def change
    add_index :athletes_events, :athlete_id
    add_index :athletes_events, :event_id
  end
end