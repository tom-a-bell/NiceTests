class Patient < ActiveRecord::Base
  belongs_to :age_group
  belongs_to :asa_grade
  belongs_to :reason
  belongs_to :surgery
  has_and_belongs_to_many :tests
end
