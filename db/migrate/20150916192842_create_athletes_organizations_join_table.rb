class CreateAthletesOrganizationsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :athletes, :organizations do |t|
      t.index :athlete_id
      t.index :organization_id
    end
  end
end
