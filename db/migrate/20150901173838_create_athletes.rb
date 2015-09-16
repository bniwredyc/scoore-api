class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :birth_date
      t.string :country
      t.string :city
      t.integer :gender, default: 1
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size
      t.datetime :avatar_updated_at
      t.string :tv_avatar
      t.integer :years
      t.integer :discipline_id, null: false

      t.timestamps null: false
    end
  end
end
