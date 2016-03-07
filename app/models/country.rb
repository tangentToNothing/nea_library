class Country < ActiveRecord::Base
  translates :name
  has_many :trainers_countries, :dependent => :destroy
  has_many :trainers, :through => :trainers_countries



  has_many :countries_resources, :dependent => :destroy
  has_many :resources, :through => :countries_resources

end
