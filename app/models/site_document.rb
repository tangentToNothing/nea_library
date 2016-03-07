class SiteDocument < ActiveRecord::Base
  translates :name

  has_attached_file :document

end
