class Organization < ActiveRecord::Base
  translates :name
  has_many :resources
end
