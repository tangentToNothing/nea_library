class Materialtype < ActiveRecord::Base
  translates :name
  has_many :resources
end
