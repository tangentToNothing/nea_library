class CreateTrainersCountries < ActiveRecord::Migration
  def change
    create_table :trainers_countries do |t|
      t.integer :country_id
      t.integer :nid
      t.integer :trainer_id

      t.timestamps null: false
    end
  end
end
