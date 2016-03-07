class CreateTargetgroups < ActiveRecord::Migration
  def up
    create_table :targetgroups do |t|
      t.integer :tid

      t.timestamps null: false
    end
    Targetgroup.create_translation_table! :name => :string
  end
  def down
    drop_table :targetgroups
    Targetgroup.drop_translation_table!
  end
end
