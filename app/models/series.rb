class Series < ActiveRecord::Base
   translates :name, :body
   has_many :resources;

   has_many :searches_series, :dependent => :destroy
   has_many :searches, :through => :searches_series


  extend EnumerateIt
  has_enumeration_for :language


end
