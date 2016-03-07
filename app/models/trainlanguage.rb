class Trainlanguage < ActiveRecord::Base
  has_many :trainers_languages, :dependent => :destroy
  has_many :trainers, :through => :trainer_languages

end
