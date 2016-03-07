class SearchesTargetgroup < ActiveRecord::Base
  belongs_to :search
  belongs_to :targetgroup
end
