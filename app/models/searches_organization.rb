class SearchesOrganization < ActiveRecord::Base
  belongs_to :search
  belongs_to :organization
end
