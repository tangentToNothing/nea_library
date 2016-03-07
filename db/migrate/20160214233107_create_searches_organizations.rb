class CreateSearchesOrganizations < ActiveRecord::Migration
  def change
    create_table :searches_organizations do |t|
      t.integer :search_id
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
