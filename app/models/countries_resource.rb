class CountriesResource < ActiveRecord::Base
  belongs_to :country
  belongs_to :resource
end
