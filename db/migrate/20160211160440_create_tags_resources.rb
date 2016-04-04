class CreateTagsResources < ActiveRecord::Migration
  def change
    create_table :tags_resources do |t|
      t.integer :tag_id
      t.integer :resource_id
      t.integer :tid
      t.integer :nid
      t.timestamps null: false
    end
  end
end
