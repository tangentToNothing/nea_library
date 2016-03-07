class Technicalarea < ActiveRecord::Base
  translates :name
  has_many :technicalareas_resources, :dependent => :destroy
  has_many :resources, :through => :technicalareas_resources

  has_many :searches_technicalareas, :dependent => :destroy
  has_many :searches, :through => :searches_technicalareas

  has_many :specialties, :dependent => :destroy
  has_many :trainers, :through => :specialties

  belongs_to :trainer,  :foreign_key => "specialty_id"

end
