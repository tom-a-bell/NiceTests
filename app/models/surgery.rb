class Surgery < ActiveRecord::Base
  has_many :patients
  has_many :operations
end
