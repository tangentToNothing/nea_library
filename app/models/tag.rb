class Tag < ActiveRecord::Base
  translates :name

  has_many :tags_resources, :dependent => :destroy
  has_many :resources, :through => :tags_resources
end
