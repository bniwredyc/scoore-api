class AddOrganizationReferenceToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :organization, index: true, null: false
  end
end
