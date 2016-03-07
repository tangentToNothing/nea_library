class CreateOrganizations < ActiveRecord::Migration
  def up
    create_table :organizations do |t|

      t.string :contact
      t.boolean :isactive

      t.timestamps null: false
    end
    Organization.create_translation_table! :name => :string
  end

  def down
    drop_table :organizations
    Organization.drop_translation_table!
    end
end
