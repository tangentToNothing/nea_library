class Language < ActiveRecord::Base
  translates :name
  has_many :site_documents
end
