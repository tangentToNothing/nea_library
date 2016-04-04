class AddColumnDescirptionToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :description, :text
  end
end
