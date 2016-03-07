class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.timestamps null: false
    end
    Project.create_translation_table! :name => :string
  end
  def down
    drop_table :projects
    Project.drop_translation_table!
  end
end
