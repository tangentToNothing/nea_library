class CreateSearchesTags < ActiveRecord::Migration
  def change
    create_table :searches_tags do |t|
      t.integer :search_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end