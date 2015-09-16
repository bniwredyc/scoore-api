class CreateJudges < ActiveRecord::Migration
  def change
    create_table :judges do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :country
      t.string :city
      t.string :email
      t.integer :discipline_id, null: false
      t.timestamps null: false
    end
  end
end
