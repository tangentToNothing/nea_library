class CreateTechnicalareas < ActiveRecord::Migration
  def up
    create_table :technicalareas do |t|
      t.integer :tid
      t.timestamps null: false
    end
    Technicalarea.create_translation_table! :name => :string
  end
  def down
    drop_table :posts
    Technicalarea.drop_translation_table!
  end
end
