class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.integer :nid
      t.integer :title
      t.string :name_first
      t.string :name_last
      t.integer :gender
      t.integer :based_in
      t.string :country
      t.string :city
      t.boolean :mepi_training
      t.boolean :mepi_trained
      t.string :phone
      t.string :email
      t.string :website
      t.text :experience
      t.integer :specialty_id
      t.text :additional
      t.text :experience_arabic
      t.string :name_first_ar
      t.string :name_last_ar
      t.string :specialty

      t.timestamps null: false
    end
  end
end
