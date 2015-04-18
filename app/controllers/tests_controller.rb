class TestsController < ApplicationController

  def index
    @patient = Patient.new
  end

  def results
    patient_criteria = params[:patient]

    if patient_criteria_are_invalid?(patient_criteria)
      flash[:error] = 'Please select options for all patient criteria.'
      redirect_to :back
      return
    end

    check_asa_grade_and_reasons(patient_criteria)

    @specialty_id = params[:specialty_id]
    @operation_id = params[:operation_id]

    @matching_patients = Patient.where(patient_criteria)
    @matching_operation = Operation.find(@operation_id)

    @recommended_tests = @matching_patients.where(recommendation: 1).flat_map { |patient| patient.tests }.uniq
    @optional_tests    = @matching_patients.where(recommendation: 2).flat_map { |patient| patient.tests }.uniq
    @additional_tests  = @matching_operation.tests

    @patient = @matching_patients.first
  end

  def patient_criteria_are_invalid?(criteria)
    criteria.nil? || criteria.length < 4 || criteria.values.include?(nil)
  end

  def check_asa_grade_and_reasons(patient_criteria)
    if patient_criteria[:reason_id].nil? or patient_criteria[:asa_grade_id] == '1'
      patient_criteria[:reason_id] = '1'
    end
  end
end
