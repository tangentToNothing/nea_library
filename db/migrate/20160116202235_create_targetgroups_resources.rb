class CreateTargetgroupsResources < ActiveRecord::Migration
  def change
    create_table :targetgroups_resources do |t|
      t.integer :targetgroup_id
      t.integer :resource_id
      t.integer :tid
      t.integer :nid
      t.timestamps null: false
    end
  end
end
