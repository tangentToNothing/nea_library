class Resource < ActiveRecord::Base
  #used for Globalize gem
  translates :title, :body
  globalize_accessors :locales => I18n.available_locales, :attributes => translated_attribute_names

  has_many :site_documents
  has_many :site_images
  belongs_to :organization
  belongs_to :series
  belongs_to :project

  has_many :technicalareas_resources, :dependent => :destroy
  has_many :technicalareas, :through => :technicalareas_resources

  has_many :targetgroups_resources, :dependent => :destroy
  has_many :targetgroups, :through => :targetgroups_resources

  has_many :tags_resources, :dependent => :destroy
  has_many :tags, :through => :tags_resources

  has_many :countries_resources, :dependent => :destroy
  has_many :countries, :through => :countries_resources

  #has_many :languages_resources, :dependent => :destroy
  #has_many :languages, :through => :languages_resources

  extend EnumerateIt
  has_enumeration_for :language

  acts_as_commentable
  has_many :comments


  searchable do

      text :title, :body, :publish_month
      time :published_at
      string :publish_month
      integer :technicalarea_ids, :multiple => true, :references => Technicalarea
      integer :targetgroup_ids, :multiple => true, :references => Targetgroup
      integer :organization_id, :references => Organization
      integer :series_id, :references => Series



      I18n.available_locales.each do |locale|
# Separate name field for each locale
        text "title_#{locale}".to_sym do
# read_Attribute is defined by Globalize.
          read_attribute(:title, locale: locale)
        end
        text "body_#{locale}".to_sym do
          read_attribute(:body, locale: locale)
        end
      end







  end

  #integer :technicalarea_ids, :multiple => true, :references => Technicalarea
    #text :comments do
      #comments.map { |comment| comment.body }
    #end


    #string  :sort_organization do
     # //organization.downcase.gsub(/^(an?|the)/, '')
    #//end





  def publish_month
   published_at
   #published_at.strftime("%B %Y")
  end

  def is_arabic
    vcount = Resource::Translation.where('locale = ? and resource_id = ?', 'ar', self.id).count
    if vcount > 0
      return true
    else
      return false
    end
  end

  def is_french
    vcount = Resource::Translation.where('locale = ? and resource_id = ?', 'fr', self.id).count
    if vcount > 0
      return true
    else
      return false
    end
  end












end
