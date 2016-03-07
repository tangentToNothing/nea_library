class CreateSearchesTechnicalareas < ActiveRecord::Migration
  def change
    create_table :searches_technicalareas do |t|
      t.integer :search_id
      t.integer :technicalarea_id

      t.timestamps null: false
    end
  end
end
