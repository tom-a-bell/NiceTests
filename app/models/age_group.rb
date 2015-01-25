class AgeGroup < ActiveRecord::Base
  has_many :patients
end
