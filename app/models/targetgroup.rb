class Targetgroup < ActiveRecord::Base
  translates :name
  has_many :targetgroups_resources, :dependent => :destroy
  has_many :resources, :through => :targetgroups_resources

  has_many :searches_targetgroups, :dependent => :destroy
  has_many :searches, :through => :searches_targetgroups
end
