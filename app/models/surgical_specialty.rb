class SurgicalSpecialty < ActiveRecord::Base
  has_and_belongs_to_many :operations
end