class CreateSearchesTargetgroups < ActiveRecord::Migration
  def change
    create_table :searches_targetgroups do |t|
      t.integer :search_id
      t.integer :targetgroup_id

      t.timestamps null: false
    end
  end
end
