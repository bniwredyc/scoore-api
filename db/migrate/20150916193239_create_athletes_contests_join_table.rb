class CreateAthletesContestsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :athletes, :contests do |t|
      t.index :athlete_id
      t.index :contest_id
    end
  end
end
