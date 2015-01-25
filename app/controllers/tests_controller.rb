class TestsController < ApplicationController

  def index
    @patient = Patient.new
  end

  def results
    patient_options = params[:patient]

    if patient_options[:reason_id] == nil or patient_options[:asa_grade_id] == 1
      patient_options[:reason_id] = 0
    end

    @patient_matches = Patient.where(patient_options)
    @patient   = @patient_matches.first
    @recommend = @patient_matches.where(:recommendation => 1).first.tests
    @consider  = @patient_matches.where(:recommendation => 2).first.tests
  end

end
