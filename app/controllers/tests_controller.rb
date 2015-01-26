class TestsController < ApplicationController

  def index
    @patient = Patient.new
  end

  def results
    patient_criteria = params[:patient]

    if patient_criteria[:reason_id] == nil or patient_criteria[:asa_grade_id] == 1
      patient_criteria[:reason_id] = 0
    end

    @matching_patients = Patient.where(patient_criteria)
    @recommend = @matching_patients.where(:recommendation => 1).first.tests
    @consider  = @matching_patients.where(:recommendation => 2).first.tests
    @patient   = @matching_patients.first
  end

end
