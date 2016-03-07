class Trainer < ActiveRecord::Base

  has_many :trainers_languages, :dependent => :destroy
  has_many :trainlanguages, :through => :trainers_languages

  has_many :trainers_countries, :dependent => :destroy
  has_many :countries, :through => :trainers_countries

  has_one :technicalarea,  :foreign_key => "specialty_id"

  has_many :specialties, :dependent => :destroy
  has_many :technicalareas, :through => :specialties

  extend EnumerateIt
  has_enumeration_for :gender
  has_enumeration_for :title


end
