class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.integer :nid
      t.integer :trainer_id
      t.integer :technicalarea_id

      t.timestamps null: false
    end
  end
end
