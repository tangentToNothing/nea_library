class Post < ActiveRecord::Base

  translates :title, :description

  has_many :site_documents
  has_many :site_images

  extend EnumerateIt
  has_enumeration_for :post_type

  acts_as_commentable
  has_many :comments
end
