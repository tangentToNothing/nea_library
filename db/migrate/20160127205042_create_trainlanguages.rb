class CreateTrainlanguages < ActiveRecord::Migration
  def change
    create_table :trainlanguages do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
