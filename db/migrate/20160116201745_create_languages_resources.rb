class CreateLanguagesResources < ActiveRecord::Migration
  def change
    create_table :languages_resources do |t|
      t.integer :language_id
      t.integer :resource_id

      t.timestamps null: false
    end
  end
end
