class Specialty < ActiveRecord::Base
  belongs_to :technicalarea
  belongs_to :trainer
end
