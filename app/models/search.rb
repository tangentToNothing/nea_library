class Search < ActiveRecord::Base
  has_many :searches_technicalareas, :dependent => :destroy
  has_many :technicalareas, :through => :searches_technicalareas

  has_many :searches_targetgroups, :dependent => :destroy
  has_many :targetgroups, :through => :searches_targetgroups

  has_many :searches_tag, :dependent => :destroy
  has_many :tags, :through => :searches_tags

  has_many :searches_organizations, :dependent => :destroy
  has_many :organizations, :through => :searches_organizations

  has_many :searches_series, :dependent => :destroy
  has_many :series, :through => :searches_series

  has_many :searches_materialtypes, :dependent => :destroy
  has_many :series, :through => :searches_materialtypes

end
