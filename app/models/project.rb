class Project < ActiveRecord::Base
  translates :name
  has_many :resource
end
