class SearchesSeries < ActiveRecord::Base
  belongs_to :search
  belongs_to :series
end
