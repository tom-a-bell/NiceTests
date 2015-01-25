class Operation < ActiveRecord::Base
  belongs_to :surgery
  has_and_belongs_to_many :surgical_specialties
  has_and_belongs_to_many :tests
end
