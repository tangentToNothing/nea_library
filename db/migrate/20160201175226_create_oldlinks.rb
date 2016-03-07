class CreateOldlinks < ActiveRecord::Migration
  def change
    create_table :oldlinks do |t|
      t.integer :pnid
      t.integer :ptnid
      t.integer :plang
      t.string :ptitle
      t.integer :pbid
      t.integer :pmlid
      t.integer :cmlid
      t.integer :cnid
      t.integer :ctnid
      t.string :ctype
      t.string :ctitle

      t.timestamps null: false
    end
  end
end
