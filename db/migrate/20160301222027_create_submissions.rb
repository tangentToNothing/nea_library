class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :personname
      t.string :position
      t.integer :organization_id
      t.string :neworg
      t.string :email
      t.string :phone
      t.integer :project_id
      t.string :newproj

      t.timestamps null: false
    end
  end
end
