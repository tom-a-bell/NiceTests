class TestsController < ApplicationController

  def index
    @patient = Patient.new
    @previous_criteria = {}
  end

  def results
    if patient_criteria_are_invalid?
      flash[:error] = 'Please select options for all patient criteria.'
      redirect_to action: 'index'
      return
    end

    check_reasons_for_asa_grade

    reason_ids = patient_criteria[:reason_id]
    specialty_id = params[:specialty_id]
    operation_id = params[:operation_id]

    @matching_patients = Patient.where(patient_criteria)
    @matching_operation = Operation.find(operation_id)

    @recommended_tests = @matching_patients.where(recommendation: 1).flat_map { |patient| patient.tests }.uniq
    @optional_tests    = @matching_patients.where(recommendation: 2).flat_map { |patient| patient.tests }.uniq
    @additional_tests  = @matching_operation.tests

    # Do not duplicate recommended tests in the list of additional or optional tests.
    @additional_tests -= @recommended_tests
    @optional_tests   -= @recommended_tests

    @patient = @matching_patients.first
    @previous_criteria = { reason_ids: reason_ids, specialty_id: specialty_id, operation_id: operation_id }
  end

  private
  def patient_criteria
    params.require(:patient).permit(:age_group_id, :asa_grade_id, :surgery_id, :reason_id => [])
  end

  def patient_criteria_are_invalid?
    params[:patient].nil? or patient_criteria.length < 4 or patient_criteria.values.include?(nil)
  end

  def check_reasons_for_asa_grade
    if patient_criteria[:reason_id].nil? or patient_criteria[:reason_id].empty?
      patient_criteria[:reason_id] = '1'
    end
  end
end
