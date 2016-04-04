class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
class CreateLanguages < ActiveRecord::Migration
  def up
    create_table :languages do |t|
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
