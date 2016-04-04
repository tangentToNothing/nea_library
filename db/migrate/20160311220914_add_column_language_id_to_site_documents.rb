class AddColumnLanguageIdToSiteDocuments < ActiveRecord::Migration
  def change
    add_column :site_documents, :language_id, :integer
  end
end
