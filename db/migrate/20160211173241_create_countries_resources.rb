class CreateCountriesResources < ActiveRecord::Migration
  def change
    create_table :countries_resources do |t|
      t.integer :country_id
      t.integer :resource_id

      t.timestamps null: false
    end
  end
end
