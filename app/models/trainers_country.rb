class TrainersCountry < ActiveRecord::Base
  belongs_to :country
  belongs_to :trainer
end
