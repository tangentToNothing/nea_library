class CreateSearchesSeries < ActiveRecord::Migration
  def change
    create_table :searches_series do |t|
      t.integer :search_id
      t.integer :series_id

      t.timestamps null: false
    end
  end
end
