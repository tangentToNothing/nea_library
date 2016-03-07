class CreateTechnicalareasResources < ActiveRecord::Migration
  def change
    create_table :technicalareas_resources do |t|
      t.integer :technicalarea_id
      t.integer :resource_id
      t.integer :tid
      t.integer :nid
      t.timestamps null: false
    end
  end
end
