class CreateTrainersLanguages < ActiveRecord::Migration
  def change
    create_table :trainers_languages do |t|
      t.integer :trainlanguage_id
      t.integer :trainer_id
      t.integer :nid

      t.timestamps null: false
    end
  end
end
