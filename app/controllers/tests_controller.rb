class TestsController < ApplicationController

  def index
    @patient = Patient.new
  end

  def results
    patient_criteria = params[:patient]

    if criteriaAreInvalid?(patient_criteria)
      flash[:error] = 'Please select options for all patient criteria.'
      redirect_to :back
      return
    end

    if patient_criteria[:asa_grade_id] == 4
      patient_criteria[:asa_grade_id] = 3
    end

    if patient_criteria[:reason_id].nil? or patient_criteria[:asa_grade_id] == 1
      patient_criteria[:reason_id] = 1
    end

    specialty_id = params[:specialty_id]
    operation_id = params[:operation_id]

    @matching_patients = Patient.where(patient_criteria)
    @matching_operation = Operation.find(operation_id)

    @recommend_tests = @matching_patients.where(:recommendation => 1).first.tests
    @optional_tests  = @matching_patients.where(:recommendation => 2).first.tests
    @special_tests   = @matching_operation.tests

    @patient   = @matching_patients.first
  end

  def criteriaAreInvalid?(criteria)
    criteria.nil? || criteria.length < 4 || criteria.values.include?(nil)
  end
end
