class CreateMaterialtypes < ActiveRecord::Migration
  def up
    create_table :materialtypes do |t|
      t.string :name

      t.timestamps null: false
    end
    Materialtype.create_translation_table! :name => :string
  end
  def down
    drop_table :materialtypes
    Materialtype.drop_translation_table!
  end
end
