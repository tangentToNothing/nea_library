class CreateSeries < ActiveRecord::Migration
  def up
    create_table :series do |t|
      t.string :name
      t.text :body
      t.integer :nid
      t.integer :pnid
      t.integer :language
      t.integer :tnid
      t.integer :pid
      t.integer :tid
      t.boolean :is_series

      t.timestamps null: false
    end
    Series.create_translation_table! :name => :string, :body => :text
  end
  def down
    drop_table :series
    Series.drop_translation_table!
  end
end
